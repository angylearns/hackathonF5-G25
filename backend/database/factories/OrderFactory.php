<?php

namespace Database\Factories;

use DateTime;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
        'id_buyer' =>\App\Models\User::pluck('id')->random(),
        'location_id'=> \App\Models\location::pluck('id')->random(),
        'final_price' => fake()-> randomFloat($nbMaxDecimals = 2, $min = 1, $max = 6000),
        'close_day' =>fake()-> DateTime(),
        ];
    }
}
