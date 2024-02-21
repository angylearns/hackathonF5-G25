<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->unique()->words(3, true) . ' ' . fake()->randomElement(['TV', 'Mobile', 'Laptop', 'Tablet', 'Camara', 'Headphones']),
            'category_id'=> \App\Models\Category::pluck('id')->random(),
            'price' => fake()-> randomFloat($nbMaxDecimals = 2, $min = 1, $max = 6000),
            'seller_id' => \App\Models\User::pluck('id')->random(),
            'location_id'=> \App\Models\location::pluck('id')->random(),
            'image'=> fake()-> url(),
            'descrption'=> fake()->sentence(250),
        ];
    }
}
