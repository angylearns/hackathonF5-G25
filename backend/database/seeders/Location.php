<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Location extends Seeder
{
    public function run()
    {
        DB::table('locations')->insert([
            
                ['location' => 'Alava'],
                ['location' => 'Albacete'],
                ['location' => 'Alicante'],
                ['location' => 'Almeria'],
                ['location' => 'Asturias'],
                ['location' => 'Avila'],
                ['location' => 'Badajoz'],
                ['location' => 'Barcelona'],
                ['location' => 'Burgos'],
                ['location' => 'Caceres'],
                ['location' => 'Cadiz'],
                ['location' => 'Cantabria'],
                ['location' => 'Castellon'],
                ['location' => 'Ciudad Real'],
                ['location' => 'Cordoba'],
                ['location' => 'Cuenca'],
                ['location' => 'Gerona (Girona)'],
                ['location' => 'Granada'],
                ['location' => 'Guadalajara'],
                ['location' => 'Guipuzcoa (Gipuzkoa)'],
                ['location' => 'Huelva'],
                ['location' => 'Huesca'],
                ['location' => 'Islas Baleares (Illes Balears)'],
                ['location' => 'Jaen'],
                ['location' => 'La Coruna (A Coruna)'],
                ['location' => 'La Rioja'],
                ['location' => 'Las Palmas'],
                ['location' => 'Leon'],
                ['location' => 'Lerida (Lleida)'],
                ['location' => 'Lugo'],
                ['location' => 'Madrid'],
                ['location' => 'Malaga'],
                ['location' => 'Murcia'],
                ['location' => 'Navarra'],
                ['location' => 'Orense (Ourense)'],
                ['location' => 'Palencia'],
                ['location' => 'Pontevedra'],
                ['location' => 'Salamanca'],
                ['location' => 'Santa Cruz de Tenerife'],
                ['location' => 'Segovia'],
                ['location' => 'Sevilla'],
                ['location' => 'Soria'],
                ['location' => 'Tarragona'],
                ['location' => 'Teruel'],
                ['location' => 'Toledo'],
                ['location' => 'Valencia'],
                ['location' => 'Valladolid'],
                ['location' => 'Vizcaya (Bizkaia)'],
                ['location' => 'Zamora'],
                ['location' => 'Zaragoza']
            
          
        ]);
    }
}
