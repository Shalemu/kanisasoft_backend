<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Leader extends Model
{
    use HasFactory;

    protected $fillable = [
        'full_name',
        'phone',
        'email',
        'user_id',
        'status',
    ];

    /**
     * A leader can have many leadership roles (many-to-many)
     */
    public function roles()
    {
        return $this->belongsToMany(
            LeadershipRole::class,
            'leader_leadership_role',
            'leader_id',
            'leadership_role_id'
        )->withTimestamps();
    }

    /**
     * The user assigned to this leader
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
