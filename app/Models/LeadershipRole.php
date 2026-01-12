<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LeadershipRole extends Model
{
    protected $fillable = ['title', 'requires_member'];

    public function leaders()
    {
        return $this->hasMany(Leader::class);
    }
}
