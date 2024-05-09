<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PhoneLocationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create a new Faker instance
        $faker = Faker::create();

        // Loop to generate 20 rows of data
        for ($i = 0; $i < 20; $i++) {
            // Insert data into the phone_locations table
            DB::table('phone_locations')->insert([
                'latitude' => $faker->latitude(),
                'longitude' => $faker->longitude(),
                'speed' => $faker->randomFloat(2, 0, 100), // Random speed between 0 and 100 with 2 decimal places
                'id_phone' => DB::table('phones')->inRandomOrder()->value('id'), // Get a random phone ID
                
            ]);
        }
    }
}
