<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Mail\MemberAuthorizedMail;
use App\Models\DeletedMember;
use App\Models\LeadershipRole;
use App\Models\Member;
use App\Models\User;
use App\Services\SMSService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class MembersController extends Controller
{
    /**
     * List all members
     */
    public function index()
    {
        return response()->json([
            'status' => 'success',
            'members' => Member::with('user')->get()
        ]);
    }

    /**
     * Show a specific member
     */
    public function show($id)
    {
        $member = Member::with('user')->find($id);

        if (!$member) {
            return response()->json(['status' => 'error', 'message' => 'Member not found'], 404);
        }

        return response()->json(['status' => 'success', 'member' => $member]);
    }

    /**
     * Create a new member and user
     */
    public function store(Request $request)
    {
        $request->merge([
            'gender' => match ($request->gender) {
                'Mwanaume' => 'M',
                'Mwanamke' => 'F',
                default => $request->gender,
            },
        ]);

        if ($request->marital_status !== 'Ndoa') {
            $request->merge(['spouse_name' => null]);
        }

        $validator = Validator::make($request->all(), [
            'full_name' => 'required|string|max:255',
            'gender' => 'required|in:M,F',
            'birth_date' => 'nullable|date',
            'birth_place' => 'nullable|string|max:255',
            'marital_status' => 'nullable|in:Ndoa,Bila ndoa',
            'spouse_name' => 'nullable|string|max:255|required_if:marital_status,Ndoa',
            'number_of_children' => 'nullable|integer|min:0',
            'residential_zone' => 'nullable|string|max:255',
            'phone_number' => 'nullable|string|max:20|unique:users,phone',
            'email' => 'nullable|email|max:255|unique:users,email',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => 'error', 'errors' => $validator->errors()], 422);
        }

        try {
            DB::beginTransaction();

            $user = User::create([
                'full_name' => $request->full_name,
                'gender' => $request->gender,
                'birth_date' => $request->birth_date,
                'birth_place' => $request->birth_place,
                'marital_status' => $request->marital_status,
                'spouse_name' => $request->spouse_name,
                'children_count' => $request->number_of_children,
                'zone' => $request->residential_zone,
                'phone' => $request->phone_number,
                'email' => $request->email,
                'password' => Hash::make('defaultpassword'),
                'role' => 'mshirika',
            ]);

            $membershipNumber = $this->generateMembershipNumber();

            $member = Member::create([
                'user_id' => $user->id,
                'full_name' => $request->full_name,
                'gender' => $request->gender,
                'birth_date' => $request->birth_date,
                'birth_place' => $request->birth_place,
                'marital_status' => $request->marital_status,
                'spouse_name' => $request->spouse_name,
                'number_of_children' => $request->number_of_children,
                'residential_zone' => $request->residential_zone,
                'phone_number' => $request->phone_number,
                'email' => $request->email,
                'membership_status' => 'active',
                'membership_number' => $membershipNumber,
            ]);

            DB::commit();

            $this->notifyMember($member);

            return response()->json([
                'status' => 'success',
                'message' => 'Member and user created successfully',
                'member' => $member,
                'user' => $user,
            ], 201);

        } catch (\Throwable $e) {
            DB::rollBack();
            return response()->json([
                'status' => 'error',
                'message' => 'Server Error: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Authorize an existing user as a member
     */
    public function authorizeUser(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
        ]);

        $user = User::find($request->user_id);

        if ($user->member) {
            $user->role = 'mshirika';
            $user->save();

            if (!$user->member->membership_number) {
                $user->member->update([
                    'membership_number' => $this->generateMembershipNumber(),
                ]);
            }

            $member = $user->member;
        } else {
            $membershipNumber = $this->generateMembershipNumber();

            $member = Member::create([
                'user_id' => $user->id,
                'full_name' => $user->full_name,
                'gender' => $user->gender,
                'birth_date' => $user->birth_date,
                'birth_place' => $user->birth_place,
                'marital_status' => $user->marital_status,
                'spouse_name' => $user->spouse_name,
                'number_of_children' => $user->children_count,
                'residential_zone' => $user->zone,
                'phone_number' => $user->phone,
                'email' => $user->email,
                'membership_status' => 'active',
                'membership_number' => $membershipNumber,
            ]);

            $user->role = 'mshirika';
            $user->save();
        }

        $this->notifyMember($member);

        return response()->json([
            'status' => 'success',
            'message' => 'User authorized as member successfully, notifications sent.',
            'member' => $member,
            'user' => $user,
        ]);
    }

    /**
     * Activate member
     */
    public function activate(Member $member)
    {
        if ($member->membership_status === 'active') {
            return response()->json([
                'status' => 'info',
                'message' => 'Member already active.',
            ]);
        }

        $member->update([
            'membership_status' => 'active',
            'deactivation_reason' => null,
        ]);

        $this->notifyMember($member);

        return response()->json([
            'status' => 'success',
            'message' => 'Member activated and notifications sent.',
        ]);
    }

    /**
     * Deactivate member
     */
    public function deactivate(Request $request, Member $member)
    {
        $request->validate([
            'reason' => 'required|string|in:Amehama,Ametegwa ushirika,Amefariki,Amepotea',
        ]);

        $status = match ($request->reason) {
            'Amehama' => 'left',
            'Ametegwa ushirika' => 'detained',
            'Amefariki' => 'deceased',
            'Amepotea' => 'lost',
            default => 'left',
        };

        $member->update([
            'membership_status' => $status,
            'deactivation_reason' => $request->reason,
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Member deactivated successfully.',
        ]);
    }

    /**
     * List deleted members
     */
    public function deleted()
    {
        return response()->json([
            'status' => 'success',
            'deleted_members' => DeletedMember::latest()->get(),
        ]);
    }

    /**
     * Restore a deleted member
     */
    public function restore($id)
    {
        $record = DeletedMember::find($id);

        if (!$record) {
            return response()->json(['status' => 'error', 'message' => 'Deleted member not found'], 404);
        }

        $restored = Member::create([
            'user_id' => $record->user_id,
            'full_name' => $record->full_name,
            'gender' => $record->gender,
            'birth_date' => $record->birth_date,
            'phone_number' => $record->phone,
            'email' => $record->email,
            'membership_status' => 'active',
        ]);

        DeletedMember::destroy($id);

        return response()->json([
            'status' => 'success',
            'message' => 'Member restored successfully.',
            'member' => $restored,
        ]);
    }

    /**
     * Delete member and user
     */
    public function deleteBoth($id)
    {
        $member = Member::find($id);

        if (!$member) {
            return response()->json(['status' => 'error', 'message' => 'Member not found'], 404);
        }

        try {
            $user = $member->user;

            DeletedMember::create([
                'user_id' => $user->id,
                'full_name' => $member->full_name,
                'email' => $member->email,
                'phone' => $member->phone_number,
                'gender' => $member->gender,
                'birth_date' => $member->birth_date,
                'reason' => 'deleted manually',
                'deleted_by' => auth()->user()->full_name ?? 'system',
                'deleted_at' => now(),
            ]);

            $member->delete();
            $user->delete();

            return response()->json([
                'status' => 'success',
                'message' => 'Member and user deleted successfully',
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                'status' => 'error',
                'message' => 'Error deleting user and member: ' . $e->getMessage(),
            ], 500);
        }
    }

    /**
     * Assign leadership role
     */
    public function assignLeadershipRole(Request $request)
    {
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'role_title' => 'required|string|exists:leadership_roles,title',
        ]);

        $user = User::find($request->user_id);
        $role = LeadershipRole::where('title', $request->role_title)->first();

        if (!$role) {
            return response()->json(['status' => 'error', 'message' => 'Role not found.'], 404);
        }

        $user->role_id = $role->id;
        $user->role = $role->title;
        $user->save();

        return response()->json([
            'status' => 'success',
            'message' => 'User role updated successfully.',
            'user' => $user,
        ]);
    }

    /**
     * Generate unique membership number
     */
    private function generateMembershipNumber()
    {
        $lastNumber = Member::max(DB::raw('CAST(membership_number AS UNSIGNED)'));
        $newNumber = $lastNumber ? $lastNumber + 1 : 1;

        return str_pad($newNumber, 4, '0', STR_PAD_LEFT);
    }

    /**
     * Notify member via SMS and Email
     */
 private function notifyMember(Member $member)
{
    // Refresh member to get latest data
    $member = $member->fresh();

    // If membership number is missing, generate and save it
    if (!$member->membership_number) {
        $member->membership_number = $this->generateMembershipNumber();
        $member->save();
    }

    $membershipNumber = $member->membership_number;
    $fullName = $member->full_name;

    // Send SMS
    if ($member->phone_number) {
        try {
            $text = "Habari {$fullName}, usajili wako FPCT Kurasini umekamilika. "
                  . "Namba yako ya ushirika ni: {$membershipNumber}. Karibu FPCT Kurasini.";

              
            app(SMSService::class)->sendSMS($member->phone_number, $text);
        } catch (\Throwable $e) {
            Log::error("SMS sending failed: " . $e->getMessage());
        }
    }

    // Send Email
    if ($member->email) {
        try {
            Mail::to($member->email)->send(
                new MemberAuthorizedMail($fullName, $membershipNumber)
            );
        } catch (\Throwable $e) {
            Log::error("Email sending failed: " . $e->getMessage());
        }
    }
}


}
