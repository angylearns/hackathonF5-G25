<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::controller(ProductController::class)->group(function() {
    Route::get('/products',  'index' );
    Route::post('/products',  'store' );
    Route::get('/products/{id}',  'show' );
    Route::put('/products/{id}',  'update' );
    Route::delete('/products/{id}',  'destroy' );
});

Route::controller(UserController::class)->group(function() {
    Route::get('/users',  'index' );
    Route::post('/users',  'store' );
    Route::get('/users/{id}',  'show' );
    Route::put('/users/{id}',  'update' );
    Route::put('/users/cancel/{id}',  'destroy' );
});

