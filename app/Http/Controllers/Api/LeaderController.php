<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Leader;
use App\Models\LeadershipRole;
use App\Models\User;

class LeaderController extends Controller
{
    public function index()
    {
        $leaders = Leader::with(['user', 'role'])
            ->where('status', 'active')
            ->orderByRaw('CASE WHEN user_id IS NULL THEN 0 ELSE 1 END')
            ->latest()
            ->get();

        $formatted = $leaders->map(function ($leader) {
            return [
                'id' => $leader->id,
                'user_id' => $leader->user_id,
                'name' => $leader->user->full_name ?? $leader->full_name,
                'email' => $leader->user->email ?? $leader->email,
                'phone' => $leader->user->phone ?? $leader->phone,
                'role' => $leader->role->title ?? '—',
                'status' => $leader->status,
            ];
        });

        return response()->json([
            'status' => 'success',
            'leaders' => $formatted,
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'user_id' => 'nullable|exists:users,id',
            'full_name' => 'required_without:user_id|string|max:255',
            'phone' => 'required_without:user_id|string|max:20',
            'email' => 'nullable|email|max:255',
            'role_id' => 'required|exists:leadership_roles,id',
        ]);

        $leader = new Leader();
        $leader->user_id = $validated['user_id'] ?? null;
        $leader->full_name = $validated['full_name'] ?? null;
        $leader->phone = $validated['phone'] ?? null;
        $leader->email = $validated['email'] ?? null;
        $leader->leadership_role_id = $validated['role_id'];
        $leader->status = 'active';
        $leader->save();

        // ✅ Update user role
        if ($leader->user_id) {
            $user = User::find($leader->user_id);
            $role = LeadershipRole::find($leader->leadership_role_id);
            if ($user && $role) {
                $user->role = $role->title;
                $user->save();
            }
        }

        return response()->json([
            'message' => 'Leader saved successfully.',
            'leader' => $leader->load(['user', 'role']),
        ], 201);
    }

    public function destroy($id)
    {
        $leader = Leader::findOrFail($id);

        if ($leader->user_id) {
            $user = User::find($leader->user_id);
            if ($user) {
                $user->role = 'mshirika';
                $user->save();
            }
        }

        $leader->delete();

        return response()->json(['message' => 'Leader deleted.']);
    }

    public function retire($id)
    {
        $leader = Leader::findOrFail($id);
        $leader->status = 'retired';
        $leader->save();

        if ($leader->user_id) {
            $user = User::find($leader->user_id);
            if ($user) {
                $user->role = 'mshirika';
                $user->save();
            }
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Leader retired successfully.',
        ]);
    }

    public function restore($id)
    {
        $leader = Leader::findOrFail($id);
        $leader->status = 'active';
        $leader->save();

        if ($leader->user_id) {
            $user = User::find($leader->user_id);
            $role = LeadershipRole::find($leader->leadership_role_id);
            if ($user && $role) {
                $user->role = $role->title;
                $user->save();
            }
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Leader restored.',
        ]);
    }

    public function retired()
    {
        $leaders = Leader::with(['user', 'role'])
            ->where('status', 'retired')
            ->latest()
            ->get();

        $formatted = $leaders->map(function ($leader) {
            return [
                'id' => $leader->id,
                'name' => $leader->user->full_name ?? $leader->full_name,
                'email' => $leader->user->email ?? $leader->email,
                'phone' => $leader->user->phone ?? $leader->phone,
                'role' => ($leader->role->title ?? '—') . ' Mstaafu',
            ];
        });

        return response()->json([
            'status' => 'success',
            'retired' => $formatted,
        ]);
    }

    public function updateRole(Request $request, $id)
    {
        $request->validate([
            'role' => 'required|string|exists:leadership_roles,title',
        ]);

        $leader = Leader::findOrFail($id);
        $role = LeadershipRole::where('title', $request->role)->firstOrFail();

        $leader->leadership_role_id = $role->id;
        $leader->save();

        // Update user's role too
        if ($leader->user_id) {
            $user = User::find($leader->user_id);
            if ($user) {
                $user->role = $role->title;
                $user->save();
            }
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Nafasi imesasishwa kikamilifu.',
        ]);
    }

}
