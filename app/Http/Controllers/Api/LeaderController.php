<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Leader;
use App\Models\LeadershipRole;
use App\Models\User;
use Illuminate\Support\Facades\Validator;

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
            'roles' => $leader->roles->pluck('title'),
            'role' => $leader->roles->first()?->title,
            'status' => $leader->status,
        ]);

        return response()->json([
            'status' => 'success',
            'leaders' => $formatted,
        ]);
    }

    /**
     * Create a new leader (with multiple roles)
     */
    public function store(Request $request)
    {
        $payload = $request->json()->all();

        $validator = Validator::make($payload, [
            'user_id'   => 'required|exists:users,id',
            'role_ids'  => 'required|array|min:1',
            'role_ids.*'=> 'exists:leadership_roles,id',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()->first(),
            ], 422);
        }

        $validated = $validator->validated();

        $user = User::findOrFail($validated['user_id']);

        // Prevent duplicate leader for the same user
        $leader = $user->leader ?? Leader::create([
            'leader_code' => 'LEAD-' . uniqid(),
            'user_id'     => $user->id,
            'full_name'   => $user->full_name,
            'phone'       => $user->phone,
            'email'       => $user->email,
            'status'      => 'active',
        ]);

        // Attach roles without removing existing
        $existingRoleIds = $leader->roles->pluck('id')->toArray();
        $newRoleIds = array_diff($validated['role_ids'], $existingRoleIds);
        if (!empty($newRoleIds)) {
            $leader->roles()->attach($newRoleIds);
        }

        // Update user system role
        $user->update(['role' => 'kiongozi']);

        return response()->json([
            'status' => 'success',
            'message' => 'Kiongozi ameongezwa kwa mafanikio.',
            'leader' => $leader->load('roles'),
        ], 201);
    }
    
    /**
 * Update only leader roles
 */
public function updateRole(Request $request, $id)
{
    $leader = Leader::findOrFail($id);

    // Make role_ids optional
    $validated = $request->validate([
        'role_ids' => 'nullable|array',
        'role_ids.*' => 'exists:leadership_roles,id',
    ]);

    // Only sync roles if role_ids was provided
    if (!empty($validated['role_ids'])) {
        $leader->roles()->sync($validated['role_ids']);
    }

    return response()->json([
        'status' => 'success',
        'message' => 'Nafasi za kiongozi zimesasishwa kikamilifu.',
        'leader' => $leader->load('roles'),
    ]);
}


    /**
     * Update leader details + roles
     */
    public function update(Request $request, $id)
    {
        $leader = Leader::findOrFail($id);

        $payload = $request->json()->all();

        $validator = Validator::make($payload, [
            'user_id'    => 'nullable|exists:users,id',
            'full_name'  => 'required_without:user_id|string|max:255',
            'phone'      => 'required_without:user_id|string|max:20',
            'email'      => 'nullable|email|max:255',
            'role_ids'   => 'required|array|min:1',
            'role_ids.*' => 'exists:leadership_roles,id',
            'status'     => 'nullable|in:active,retired',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()->first(),
            ], 422);
        }

        $validated = $validator->validated();

        // Update user assignment if provided
        if (!empty($validated['user_id'])) {
            $user = User::findOrFail($validated['user_id']);

            // Prevent same user assigned to multiple leaders
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

            $user->update(['role' => 'kiongozi']);
        } else {
            // Update without assigning user
            $leader->update([
                'user_id'   => null,
                'full_name' => $validated['full_name'],
                'phone'     => $validated['phone'],
                'email'     => $validated['email'] ?? $leader->email,
                'status'    => $validated['status'] ?? $leader->status,
            ]);
        }

        // Sync roles: replace existing with new
        $leader->roles()->sync($validated['role_ids']);

        return response()->json([
            'status' => 'success',
            'message' => 'Kiongozi amesahihishwa kikamilifu.',
            'leader' => $leader->load('roles'),
        ]);
    }

    /**
     * Delete leader
     */
    public function destroy($id)
    {
        $leader = Leader::findOrFail($id);

        if ($leader->user_id) {
            User::where('id', $leader->user_id)->update(['role' => 'mshirika']);
        }

        $leader->roles()->detach();
        $leader->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Leader deleted.',
        ]);
    }
}
