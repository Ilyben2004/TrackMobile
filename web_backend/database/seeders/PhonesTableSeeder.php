<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PhonesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();

        // Generate 50 rows of data for the phones table
        for ($i = 0; $i < 50; $i++) {
            DB::table('phones')->insert([
                'ownerName' => $faker->name,
                'libelle' => $faker->word,
                'type' => $faker->randomElement(['Smartphone', 'Feature phone']),
                'city' => $faker->city,
                'phoneNumber' => $faker->phoneNumber,
                'email' => $faker->safeEmail,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
