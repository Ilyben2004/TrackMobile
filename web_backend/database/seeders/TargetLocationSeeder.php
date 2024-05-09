<?php
namespace Database\Seeders;

use App\Models\TargetLocation;
use Illuminate\Database\Seeder;

class TargetLocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create 5 rows of target locations using the TargetLocationFactory
        TargetLocation::factory()
            ->count(5)
            ->create();
    }
}
