<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'username',
        'seller',
        'email',
        'address',
        'location_id',
        'first_name', 
        'last_name',
        'zip_code',
        'mobile',
    ] ;
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];
    
    protected $dates = [
        'created_at',
        'updated_at',
    ];

    public function seller()
    {
        return $this->hasMany(Product::class, 'seller_id');
    }

    public function orderBuyer()
    {
        return $this->hasMany(Order::class, 'buyer_id');
    }

    public function orderSeller()
    {
        return $this->hasMany(Product::class, 'buyer_id');
    }

}
