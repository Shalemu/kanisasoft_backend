<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LeadershipRole extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',             // Role title/name
        'requires_member',   // Optional: only members can take this role
        'protected',         // Optional: true if cannot be removed
    ];

    /**
     * A leadership role can belong to MANY leaders (many-to-many)
     */
    public function leaders()
    {
        return $this->belongsToMany(
            Leader::class,
            'leader_leadership_role', // Pivot table
            'role_id',               // This model's key in pivot
            'leader_id'              // Related model key in pivot
        )->withTimestamps();        // Optional: track created_at/updated_at on pivot
    }
}
