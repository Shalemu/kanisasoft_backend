<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('groups', function (Blueprint $table) {
            // Drop the old leader column if it exists
            if (Schema::hasColumn('groups', 'leader')) {
                $table->dropColumn('leader');
            }

            // Add new foreign key column for leader_id
            $table->unsignedBigInteger('leader_id')->nullable()->after('zone');

            $table->foreign('leader_id')
                  ->references('id')
                  ->on('members')
                  ->nullOnDelete();
        });
    }

    public function down(): void
    {
        Schema::table('groups', function (Blueprint $table) {
            // Drop foreign key and column
            $table->dropForeign(['leader_id']);
            $table->dropColumn('leader_id');

            // Restore old leader string column
            $table->string('leader')->nullable();
        });
    }
};
