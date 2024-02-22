<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Route::controller(PageController::class)->group(function() {
//     Route::get('/',  'home' )-> name ('home');
//     Route::get('blog', 'blog')-> name ('blog');
//     Route::get('blog/{slug}', 'post' ) -> name ('post');
// });



//antes
    // // nos lleva a  /
    // Route::get('/', [PageController::class, 'home'] )-> name ('home');


    // // / blog
    // Route::get('blog', [PageController::class, 'blog'])-> name ('blog');


    // // blog/id
    // Route::get('blog/{slug}',[PageController::class, 'post'] ) -> name ('post');
    
