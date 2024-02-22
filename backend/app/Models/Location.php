<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Location extends Model
{
    use HasFactory;

    protected $fillable = [
        'location',
    ];

    public function products()
    {
        return $this->hasMany(Product::class, 'location_id');
    }


}
