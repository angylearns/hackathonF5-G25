<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

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

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function seller()
    {
        return $this->belongsTo(User::class, 'seller_id');
    }

    public function location()
    {
        return $this->belongsTo(Location::class, 'location_id');
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'product_id');
    }

}