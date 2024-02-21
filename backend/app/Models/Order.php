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
        'id_buyer',
        'id_product',
        'final_price',
        'close_day',
    ];

    protected $dates = [
        'created_at',
        'updated_at',
    ];

    public function users()
    {
        // return $this->belongsTo(Cliente::class, 'id_cliente');
    }


    public function products()
    {
        // return $this->belongsToMany(Libro::class, 'id_libro');
    }
};