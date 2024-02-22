<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Category extends Seeder
{
    public function run(): void
    {
        DB::table('locations')->insert([
         [
            ['category' => 'computers'],
            ['category' => 'phones'],
            ['category' => 'components'],
            ['category' => 'peripherals'],
            ['category' => 'software'],
            ['category' => 'networking'],
            ['category' => 'storage'],
            ['category' => 'electronics'],
            ['category' => 'home'],
            ['category' => 'laptops'],
            ['category' => 'audio'],
            ['category' => 'headphones'],
            ['category' => 'wearables'],
            ['category' => 'cameras'],
            ['category' => 'gaming'],
            ['category' => 'monitors'], 
            ['category' => 'printers'],
            ['category' => 'keyboards'],
            ['category' => 'routers'],
            ['category' => 'smartwatches'],
            ['category' => 'tablets'],
            ['category' => 'vr'],
            ['category' => 'drones'],
            ['category' => 'smart home devices'],
            ['category' => 'fitness trackers'],
            ['category' => 'projectors'],
            ['category' => 'speakers'],
            ['category' => 'accessories'],
        ]
     ]);
    }
}
