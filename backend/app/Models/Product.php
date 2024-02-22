<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;


    protected $fillable = [
        'name',
        'category_id',
        'price',
        'seller_id',
        'location_id',
        'image',
        'description',
    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

}