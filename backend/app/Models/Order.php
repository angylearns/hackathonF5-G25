<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User; 
use App\Models\Product; 


class Order extends Model
{
    use HasFactory;


    protected $fillable = [
        'buyer_id',
        'product_id',
        'final_price',
        'close_day',
    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    public function buyer(): BelongsTo
    {
        return $this->belongsTo(User::class, 'buyer_id');
    }

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
};