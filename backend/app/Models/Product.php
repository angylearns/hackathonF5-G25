<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Libro extends Model
{
    use HasFactory;


    protected $fillable = [
        'name',
        'category_id',
        'price',
        'seller_id',
        'location_id',
        'image',
        'descrption',
    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

}