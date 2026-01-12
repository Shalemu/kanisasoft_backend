<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LeadershipRole;

class LeadershipRoleController extends Controller
{
    // List all roles
    public function index()
    {
        return response()->json([
            'status' => 'success',
            'roles' => LeadershipRole::all()
        ]);
    }

    // Store new role
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255|unique:leadership_roles,title',
            'requires_member' => 'required|boolean',
        ]);

        $role = LeadershipRole::create([
            'title' => $request->title,
            'requires_member' => $request->requires_member,
            'protected' => false,
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Role added successfully',
            'role' => $role
        ]);
    }

    // Update existing role
    public function update(Request $request, $id)
    {
        $role = LeadershipRole::findOrFail($id);

        if ($role->protected && $request->title !== $role->title) {
            return response()->json([
                'status' => 'error',
                'message' => 'Huwezi kubadilisha jina la nafasi iliyo lindwa.'
            ], 403);
        }

        $request->validate([
            'title' => 'required|string|max:255|unique:leadership_roles,title,' . $role->id,
            'requires_member' => 'required|boolean',
        ]);

        $role->update([
            'title' => $request->title,
            'requires_member' => $request->requires_member,
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Role updated successfully',
            'role' => $role
        ]);
    }

    // Delete role
    public function destroy($id)
    {
        $role = LeadershipRole::findOrFail($id);
    
        if ($role->protected) {
            return response()->json([
                'status' => 'error',
                'message' => 'Hii nafasi ni ya msingi na haiwezi kufutwa.',
            ], 403);
        }
    
        $role->delete();
    
        return response()->json([
            'status' => 'success',
            'message' => 'Nafasi imefutwa kikamilifu.',
        ]);
    }
    
}
