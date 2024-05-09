<?php
namespace Database\Factories;

use App\Models\TargetLocation;
use App\Models\Phone;
use Illuminate\Database\Eloquent\Factories\Factory;

class TargetLocationFactory extends Factory
{
    protected $model = TargetLocation::class;

    public function definition()
    {
        return [
            'phone_id' => Phone::inRandomOrder()->first()->id, // Assuming you have a Phone model
            'longitude' => $this->faker->longitude,
            'latitude' => $this->faker->latitude,
        ];
    }
}
