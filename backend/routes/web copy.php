<!-- <?php

// use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\PageController; -->

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

// Route::get('/', function () {
//     return view('home');
// })-> name ('home');


// Route::get('blog', function () {
//     $posts = [
//             [
//                 'id' => 1,
//                 'titulo' =>'Hoy en nutriciones Loli',
//                 'contenido' => 'Lerem ipsum... bliblibli'
//             ],
//             [
//                 'id' => 2,
//                 'titulo' =>'Como evitar dormite en clase',
//                 'contenido' => 'Recuerda que comer espinacas es importante'
//             ]
//         ];
        
//     return view('blog',['posts'=> $posts]);
// })-> name ('blog');



// Route::get('blog/{slug}', function ($slug) {
//     $posts = [
//             [
//                 'id' => 1,
//                 'titulo' =>'Hoy en nutriciones Loli',
//                 'contenido' => 'Lerem ipsum... bliblibli'
//             ],
//             [
//                 'id' => 2,
//                 'titulo' =>'Como evitar dormite en clase',
//                 'contenido' => 'Recuerda que comer espinacas es importante'
//             ]
//         ];


//         $selectedPost=null;
//         foreach ($posts as $post){
//             if ($post['id']==$slug){
//                 $selectedPost=$post;
//             }
//         }
         

//     return view('post', ['post'=>$selectedPost]);
// }) -> name ('post');
