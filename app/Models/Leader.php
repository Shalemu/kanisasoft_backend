<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Leader extends Model
{
    protected $fillable = ['full_name', 'phone', 'email', 'role_id', 'user_id', 'status'];

    public function role()
    {
        return $this->belongsTo(LeadershipRole::class, 'leadership_role_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
