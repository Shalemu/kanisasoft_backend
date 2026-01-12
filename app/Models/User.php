<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use DateTimeInterface;
use App\Notifications\ResetPasswordNotification;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;



    /**
     * The database table used by the model.
     */
    protected $table = 'users';

    /**
     * The attributes that are mass assignable.
     */
    protected $fillable = [
        'full_name',
        'gender',
        'birth_date',
        'birth_place',
        'birth_district',
        'marital_status',
        'spouse_name',
        'children_count',
        'zone',
        'phone',
        'email',
        'password',
        'role',
    ];
    
    /**
     * The attributes that should be hidden for arrays.
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     */
    protected $casts = [
        'birth_date' => 'date',
        'children_count' => 'integer',
        'email_verified_at' => 'datetime',
    ];

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d');
    }

    /**
     * One-to-One Relationship: A user may be a registered church member.
     */
    public function member()
    {
        return $this->hasOne(Member::class);
    }

    /**
     * Check if user has a specific role by name.
     */
    public function hasRole($roleName)
    {
        return $this->role === $roleName;
    }

 

public function sendPasswordResetNotification($token)
{
    $this->notify(new ResetPasswordNotification($token));
}

}
