<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Group;
use Illuminate\Support\Facades\Validator;

class GroupsController extends Controller
{
    public function index()
    {
        $groups = Group::with('members')->get();
        return response()->json([
            'status' => 'success',
            'groups' => $groups
        ]);
    }

    public function show($id)
    {
        $group = Group::with('members')->find($id);
        if (!$group) {
            return response()->json([
                'status' => 'error',
                'message' => 'Group not found'
            ], 404);
        }

        return response()->json([
            'status' => 'success',
            'group' => $group
        ]);
    }

    public function members($id)
    {
        $group = Group::with(['members.user', 'leader'])->find($id);

        if (!$group) {
            return response()->json([
                'status' => 'error',
                'message' => 'Group not found'
            ], 404);
        }

        return response()->json([
            'status' => 'success',
            'leader_id' => $group->leader_id,
            'members' => $group->members->map(function ($m) {
                return [
                    'id' => $m->id,
                    'full_name' => $m->full_name,
                    'phone' => $m->phone_number,
                    'email' => $m->email,
                    'role' => $m->user?->role,
                    'photo_url' => $m->user?->photo_url ? asset($m->user->photo_url) : null,
                ];
            }),
        ]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'    => 'required|string|max:255|unique:groups,name',
            'zone'    => 'nullable|string|max:255',
            'leader'  => 'nullable|string|max:255',
            'contact' => 'nullable|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $group = Group::create([
            'name'    => $request->input('name'),
            'zone'    => $request->input('zone'),
            'leader'  => $request->input('leader'),
            'contact' => $request->input('contact'),
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Group created successfully',
            'group' => $group
        ], 201);
    }

    public function update(Request $request, $id)
    {
        $group = Group::find($id);
        if (!$group) {
            return response()->json([
                'status' => 'error',
                'message' => 'Group not found'
            ], 404);
        }

        $validator = Validator::make($request->all(), [
            'name'    => 'sometimes|required|string|max:255|unique:groups,name,' . $id,
            'zone'    => 'nullable|string|max:255',
            'leader'  => 'nullable|string|max:255',
            'contact' => 'nullable|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $group->update([
            'name'    => $request->input('name', $group->name),
            'zone'    => $request->input('zone', $group->zone),
            'leader'  => $request->input('leader', $group->leader),
            'contact' => $request->input('contact', $group->contact),
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Group updated successfully',
            'group' => $group
        ]);
    }

    public function destroy($id)
    {
        $group = Group::find($id);
        if (!$group) {
            return response()->json([
                'status' => 'error',
                'message' => 'Group not found'
            ], 404);
        }

        $group->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Group deleted successfully'
        ]);
    }

    public function addMember(Request $request, Group $group)
    {
        $request->validate([
            'member_id' => 'required|exists:members,id',
        ]);

        // ✅ Only allow if logged-in user is the leader of this group
        if ($request->user()->member->id !== $group->leader_id) {
            return response()->json([
                'status' => 'error',
                'message' => 'Huna ruhusa ya kuongeza washirika kwenye kundi hili.',
            ], 403);
        }

        if ($group->members()->where('member_id', $request->member_id)->exists()) {
            return response()->json([
                'status' => 'error',
                'message' => 'Mshirika tayari yupo kwenye kundi hili.',
            ], 409);
        }

        $group->members()->attach($request->member_id);

        return response()->json([
            'status' => 'success',
            'message' => 'Mshirika ameongezwa kwenye kundi.',
        ]);
    }

    public function removeMember(Request $request, Group $group)
    {
        $request->validate([
            'member_id' => 'required|exists:members,id',
        ]);

        // ✅ Only allow if logged-in user is the leader of this group
        if ($request->user()->member->id !== $group->leader_id) {
            return response()->json([
                'status' => 'error',
                'message' => 'Huna ruhusa ya kuondoa washirika kwenye kundi hili.',
            ], 403);
        }

        $group->members()->detach($request->member_id);

        return response()->json([
            'status' => 'success',
            'message' => 'Mshirika ameondolewa kwenye kundi.',
        ]);
    }

    public function filterByZone(Request $request)
    {
        $zone = $request->query('zone');
        $groups = Group::with('members')
            ->when($zone, fn($q) => $q->where('zone', $zone))
            ->get();

        return response()->json(['status' => 'success', 'groups' => $groups]);
    }

    public function searchGroupMembers($id, Request $request)
    {
        $keyword = $request->query('search');
        $group = Group::with(['members.user'])->findOrFail($id);

        $filtered = $group->members->filter(function ($m) use ($keyword) {
            return str_contains(strtolower($m->full_name), strtolower($keyword))
                || str_contains($m->phone_number, $keyword)
                || str_contains(strtolower($m->user?->role ?? ''), strtolower($keyword));
        })->values();

        return response()->json([
            'status' => 'success',
            'members' => $filtered,
        ]);
    }

    // ✅ Assign or remove group leader
    public function assignLeader(Request $request, Group $group)
    {
        $memberId = $request->input('member_id');

        // If null, remove leader
        if (is_null($memberId)) {
            $group->leader_id = null;
        } else {
            $request->validate([
                'member_id' => 'exists:members,id',
            ]);
            $group->leader_id = $memberId;
        }

        $group->save();

        return response()->json([
            'status' => 'success',
            'message' => $memberId ? 'Leader assigned to group successfully' : 'Leader removed from group',
            'group' => $group->load('leader'),
        ]);
    }
}
