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
use Illuminate\Validation\Rule;
use Illuminate\Support\Str;






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

    public function byUser($userId)
{
    $member = Member::where('user_id', $userId)->first();
    if (!$member) {
        return response()->json(['message' => 'Member not found'], 404);
    }
    return response()->json(['member' => $member]);
}




public function update(Request $request, Member $member)
{
    $user = $member->user;

    /*
    |--------------------------------------------------------------------------
    | Normalize values BEFORE validation
    |--------------------------------------------------------------------------
    */

    // Normalize gender
    $request->merge([
        'gender' => match ($request->gender) {
            'Mwanaume' => 'M',
            'Mwanamke' => 'F',
            default => $request->gender,
        },
    ]);

    // Normalize marital status (frontend → backend standard)
    $request->merge([
        'marital_status' => match ($request->marital_status) {
            'Ndoa' => $request->gender === 'F' ? 'Ameolewa' : 'Ameoa',
            'Bila ndoa' => $request->gender === 'F' ? 'Hajaolewa' : 'Hajaoa',
            'Ameoa', 'Ameolewa', 'Hajaoa', 'Hajaolewa', 'Mjane', 'Mgane' => $request->marital_status,
            default => null,
        },
    ]);

    // Normalize booleans (important for frontend)
    $request->merge([
        'lives_alone' => filter_var($request->lives_alone, FILTER_VALIDATE_BOOLEAN, FILTER_NULL_ON_FAILURE),
        'is_authorized' => filter_var($request->is_authorized, FILTER_VALIDATE_BOOLEAN, FILTER_NULL_ON_FAILURE),
    ]);

    // Clear spouse_name if NOT married
    if (!in_array($request->marital_status, ['Ameoa', 'Ameolewa'])) {
        $request->merge(['spouse_name' => null]);
    }

    /*
    |--------------------------------------------------------------------------
    | Validation rules
    |--------------------------------------------------------------------------
    */

    $phoneRule = ['nullable', 'string', 'max:20'];
    $emailRule = ['nullable', 'email', 'max:255'];

    if ($user) {
        $phoneRule[] = Rule::unique('users', 'phone')->ignore($user->id);
        $emailRule[] = Rule::unique('users', 'email')->ignore($user->id);
    } else {
        $phoneRule[] = 'unique:users,phone';
        $emailRule[] = 'unique:users,email';
    }

    $validator = Validator::make($request->all(), [
        // Basic info
        'full_name' => 'required|string|max:255',
        'gender' => 'required|in:M,F',
        'birth_date' => 'nullable|date',
        'birth_place' => 'nullable|string|max:255',
        'marital_status' => 'nullable|in:Ameoa,Ameolewa,Hajaoa,Hajaolewa,Mjane,Mgane',
        'spouse_name' => 'nullable|string|max:255|required_if:marital_status,Ameoa,Ameolewa',
        'number_of_children' => 'nullable|integer|min:0',
        'residential_zone' => 'nullable|string|max:255',
        'phone_number' => $phoneRule,
        'email' => $emailRule,

        // Imani
        'date_of_conversion' => 'nullable|date',
        'church_of_conversion' => 'nullable|string|max:255',
        'baptism_date' => 'nullable|date',
        'baptism_place' => 'nullable|string|max:255',
        'baptizer_name' => 'nullable|string|max:255',
        'baptizer_title' => 'nullable|string|max:255',
        'previous_church' => 'nullable|string|max:255',
        'church_service' => 'nullable|string|max:255',
        'service_duration' => 'nullable|string|max:255',

        // Education & work
        'education_level' => 'nullable|string|max:255',
        'profession' => 'nullable|string|max:255',
        'occupation' => 'nullable|string|max:255',
        'work_place' => 'nullable|string|max:255',
        'work_contact' => 'nullable|string|max:255',

        // Family
        'lives_alone' => 'nullable|boolean',
        'lives_with' => 'nullable|string|max:255',
        'family_role' => 'nullable|string|max:255',
        'live_with_who' => 'nullable|string|max:255',
        'next_of_kin' => 'nullable|string|max:255',
        'next_of_kin_phone' => 'nullable|string|max:20',

        // Membership
        'membership_number' => 'nullable|string|max:255',
        'verified_by' => 'nullable|string|max:255',
        'membership_start_date' => 'nullable|date',
        'membership_status' => 'nullable|string|max:50',
        'deactivation_reason' => 'nullable|string|max:255',
        'is_authorized' => 'nullable|boolean',
    ]);

    if ($validator->fails()) {
        return response()->json([
            'status' => 'error',
            'errors' => $validator->errors(),
        ], 422);
    }

    try {
        DB::beginTransaction();

        /*
        |--------------------------------------------------------------------------
        | Format phone number
        |--------------------------------------------------------------------------
        */
        $formattedPhone = preg_replace('/\D/', '', $request->phone_number ?? '');
        if ($formattedPhone && str_starts_with($formattedPhone, '0')) {
            $formattedPhone = '255' . substr($formattedPhone, 1);
        }

        /*
        |--------------------------------------------------------------------------
        | Update or create User
        |--------------------------------------------------------------------------
        */
        if ($user) {
            $user->update([
                'full_name' => $request->full_name,
                'gender' => $request->gender,
                'birth_date' => $request->birth_date,
                'birth_place' => $request->birth_place,
                'marital_status' => $request->marital_status,
                'spouse_name' => $request->spouse_name,
                'children_count' => $request->number_of_children,
                'zone' => $request->residential_zone,
                'phone' => $formattedPhone,
                'email' => $request->email,
            ]);
        } else {
            $user = User::create([
                'full_name' => $request->full_name,
                'gender' => $request->gender,
                'birth_date' => $request->birth_date,
                'birth_place' => $request->birth_place,
                'marital_status' => $request->marital_status,
                'spouse_name' => $request->spouse_name,
                'children_count' => $request->number_of_children,
                'zone' => $request->residential_zone,
                'phone' => $formattedPhone,
                'email' => $request->email,
                'password' => Hash::make(Str::random(10)),
            ]);
        }

        /*
        |--------------------------------------------------------------------------
        | Update Member
        |--------------------------------------------------------------------------
        */
        $member->update([
            'user_id' => $user->id,
            'full_name' => $request->full_name,
            'gender' => $request->gender,
            'birth_date' => $request->birth_date,
            'birth_place' => $request->birth_place,
            'marital_status' => $request->marital_status,
            'spouse_name' => $request->spouse_name,
            'number_of_children' => $request->number_of_children,
            'residential_zone' => $request->residential_zone,
            'phone_number' => $formattedPhone,
            'email' => $request->email,

            // Imani
            'date_of_conversion' => $request->date_of_conversion,
            'church_of_conversion' => $request->church_of_conversion,
            'baptism_date' => $request->baptism_date,
            'baptism_place' => $request->baptism_place,
            'baptizer_name' => $request->baptizer_name,
            'baptizer_title' => $request->baptizer_title,
            'previous_church' => $request->previous_church,
            'church_service' => $request->church_service,
            'service_duration' => $request->service_duration,

            // Education & work
            'education_level' => $request->education_level,
            'profession' => $request->profession,
            'occupation' => $request->occupation,
            'work_place' => $request->work_place,
            'work_contact' => $request->work_contact,

            // Family
            'lives_alone' => $request->lives_alone,
            'lives_with' => $request->lives_with,
            'family_role' => $request->family_role,
            'live_with_who' => $request->live_with_who,
            'next_of_kin' => $request->next_of_kin,
            'next_of_kin_phone' => $request->next_of_kin_phone,

            // Membership
            'membership_number' => $request->membership_number ?? $member->membership_number,
            'verified_by' => $request->verified_by,
            'membership_start_date' => $request->membership_start_date,
            'membership_status' => $request->membership_status ?? $member->membership_status,
            'deactivation_reason' => $request->deactivation_reason,
            'is_authorized' => $request->is_authorized ?? $member->is_authorized,
        ]);

        DB::commit();

        return response()->json([
            'status' => 'success',
            'message' => 'Member and user updated successfully.',
            'member' => $member->fresh()->load('user'),
        ]);

    } catch (\Throwable $e) {
        DB::rollBack();

        Log::error('Member update failed', [
            'error' => $e->getMessage(),
            'trace' => $e->getTraceAsString(),
        ]);

        return response()->json([
            'status' => 'error',
            'message' => 'Server error.',
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
       $reasons = [
    'Amehama' => 'left',
    'Ametegwa ushirika' => 'detained',
    'Amefariki' => 'deceased',
    'Amepotea' => 'lost',
    'Amejisajiri kimakosa' => 'lost',
];

$request->validate([
    'reason' => ['required', Rule::in(array_keys($reasons))],
]);

$status = $reasons[$request->reason];

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
