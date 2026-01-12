<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    use HasFactory;

    protected $table = 'groups';

    protected $fillable = [
        'name',
        'zone',
        'leader',
        'contact',
    ];

    /**
     * Many-to-many relationship with members.
     */
    public function members()
    {
        return $this->belongsToMany(Member::class, 'member_group', 'group_id', 'member_id')
                    ->withTimestamps();
    }

    public function leader()
    {
        return $this->belongsTo(Member::class, 'leader_id');
    }

}
