<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Leader;
use App\Models\LeadershipRole;
use App\Models\User;

class LeaderController extends Controller
{
    /**
     * List active leaders
     */
    public function index()
    {
        $leaders = Leader::with(['user', 'roles'])
            ->where('status', 'active')
            ->orderByRaw('CASE WHEN user_id IS NULL THEN 0 ELSE 1 END DESC')
            ->latest()
            ->get();

 $formatted = $leaders->map(fn ($leader) => [
    'id' => $leader->id,
    'user_id' => $leader->user_id,
    'name' => $leader->user->full_name ?? $leader->full_name,
    'email' => $leader->user->email ?? $leader->email,
    'phone' => $leader->user->phone ?? $leader->phone,
    'roles' => $leader->roles->pluck('title'), // all roles
    'role' => $leader->roles->first()?->title, // first role for sorting
    'status' => $leader->status,
]);


        return response()->json([
            'status' => 'success',
            'leaders' => $formatted,
        ]);
    }

    /**
     * Create a new leader (WITH MULTIPLE ROLES)
     */
 /**
 * Create a new leader (WITH MULTIPLE ROLES)
 */
public function store(Request $request)
{
    $validated = $request->validate([
        'user_id'   => 'required|exists:users,id',
        'role_ids'  => 'required|array',
        'role_ids.*'=> 'exists:leadership_roles,id',
    ]);

    // Prevent same user becoming leader twice
    $user = User::findOrFail($validated['user_id']);
    $leader = $user->leader ?? Leader::create([
        'leader_code' => 'LEAD-' . uniqid(),
        'user_id'     => $user->id,
        'full_name'   => $user->full_name,
        'phone'       => $user->phone,
        'email'       => $user->email,
        'status'      => 'active',
    ]);

    // Attach new roles without removing existing ones
    $existingRoleIds = $leader->roles->pluck('id')->toArray();
    $newRoleIds = array_diff($validated['role_ids'], $existingRoleIds);
    if (!empty($newRoleIds)) {
        $leader->roles()->attach($newRoleIds);
    }

    // Mark system role
    $user->update(['role' => 'kiongozi']);

    return response()->json([
        'status' => 'success',
        'message' => 'Kiongozi ameongezwa kwa mafanikio.',
        'leader' => $leader->load('roles'),
    ], 201);
}

/**
 * Update leader details + roles
 */
public function update(Request $request, $id)
{
    $leader = Leader::findOrFail($id);

    $validated = $request->validate([
        'user_id'    => 'nullable|exists:users,id',
        'full_name'  => 'required_without:user_id|string|max:255',
        'phone'      => 'required_without:user_id|string|max:20',
        'email'      => 'nullable|email|max:255',
        'role_ids'   => 'required|array',
        'role_ids.*' => 'exists:leadership_roles,id',
        'status'     => 'nullable|in:active,retired',
    ]);

    // Update user assignment
    if (!empty($validated['user_id'])) {
        $user = User::findOrFail($validated['user_id']);

        // Prevent assigning same user to multiple leaders
        $exists = Leader::where('user_id', $user->id)
            ->where('id', '!=', $leader->id)
            ->exists();

        if ($exists) {
            return response()->json([
                'status' => 'error',
                'message' => 'User is already assigned as a leader.',
            ], 422);
        }

        $leader->update([
            'user_id'   => $user->id,
            'full_name' => $user->full_name,
            'phone'     => $user->phone,
            'email'     => $user->email,
            'status'    => $validated['status'] ?? $leader->status,
        ]);

        // Ensure system role
        $user->update(['role' => 'kiongozi']);
    } else {
        $leader->update([
            'user_id'   => null,
            'full_name' => $validated['full_name'],
            'phone'     => $validated['phone'],
            'email'     => $validated['email'] ?? $leader->email,
            'status'    => $validated['status'] ?? $leader->status,
        ]);
    }

    // Attach new roles without removing existing ones
    $existingRoleIds = $leader->roles->pluck('id')->toArray();
    $newRoleIds = array_diff($validated['role_ids'], $existingRoleIds);
    if (!empty($newRoleIds)) {
        $leader->roles()->attach($newRoleIds);
    }

    return response()->json([
        'status' => 'success',
        'message' => 'Kiongozi amesahihishwa kikamilifu.',
        'leader' => $leader->load('roles'),
    ]);
}


    /**
     * Update leader details + roles
     */
   
    /**
     * Delete leader
     */
    public function destroy($id)
    {
        $leader = Leader::findOrFail($id);

        if ($leader->user_id) {
            User::where('id', $leader->user_id)
                ->update(['role' => 'mshirika']);
        }

        $leader->roles()->detach();
        $leader->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Leader deleted.',
        ]);
    }

    /**
     * Retire leader
     */
    public function retire($id)
    {
        $leader = Leader::findOrFail($id);
        $leader->update(['status' => 'retired']);

        if ($leader->user_id) {
            User::where('id', $leader->user_id)
                ->update(['role' => 'mshirika']);
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Leader retired successfully.',
        ]);
    }

    /**
     * Restore retired leader
     */
    public function restore($id)
    {
        $leader = Leader::findOrFail($id);
        $leader->update(['status' => 'active']);

        if ($leader->user_id) {
            User::where('id', $leader->user_id)
                ->update(['role' => 'kiongozi']);
        }

        return response()->json([
            'status' => 'success',
            'message' => 'Leader restored successfully.',
        ]);
    }

    /**
     * List retired leaders
     */
    public function retired()
    {
        $leaders = Leader::with(['user', 'roles'])
            ->where('status', 'retired')
            ->latest()
            ->get();

        $formatted = $leaders->map(fn ($leader) => [
            'id' => $leader->id,
            'name' => $leader->user->full_name ?? $leader->full_name,
            'email' => $leader->user->email ?? $leader->email,
            'phone' => $leader->user->phone ?? $leader->phone,
            'roles' => $leader->roles->pluck('title')
                ->map(fn ($r) => $r . ' Mstaafu'),
        ]);

        return response()->json([
            'status' => 'success',
            'retired' => $formatted,
        ]);
    }
}
