<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Category extends Seeder
{
    public function run(): void
    {
        DB::table('categories')->insert([
            ['category' => 'computers'],
            ['category' => 'phones'],
     ]);
    }
}
