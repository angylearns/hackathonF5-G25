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

        $urls = [
            'https://img.freepik.com/free-photo/creative-reels-composition_23-2149711507.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/smartphone-balancing-with-pink-background_23-2150271746.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/new-cell-phone-white-background_58702-4837.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/close-up-hand-holding-smartphone_23-2149148857.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/futuristic-galaxy-mobile-phone-connects-with-wireless-technology-generated-by-ai_188544-29655.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/electronic-device-balancing-concept_23-2150422324.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/phone-screen-with-abstract-marble-aesthetic_53876-145553.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/elegant-smartphone-composition_23-2149437106.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/digital-smart-phone-abstract-background_1409-4091.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph',
            'https://img.freepik.com/free-photo/laptop-smartphone-tablet-pink-background-3d-rendering_1142-41785.jpg?size=626&ext=jpg&ga=GA1.1.1082627602.1708626764&semt=sph'
        ];


        return [
            'name' => fake()->unique()->words(3, true) . ' ' . fake()->randomElement(['TV', 'Mobile', 'Laptop', 'Tablet', 'Camara', 'Headphones']),
            'category_id'=> \App\Models\Category::pluck('id')->random(),
            'price' => fake()-> randomFloat($nbMaxDecimals = 2, $min = 1, $max = 6000),
            'seller_id' => \App\Models\User::pluck('id')->random(),
            'location_id'=> \App\Models\location::pluck('id')->random(),
            'image'=> fake()-> randomElement($urls),
            'description'=> fake()->sentence(3),
        ];
    }
}
