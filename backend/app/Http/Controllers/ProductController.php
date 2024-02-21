<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Libro;
use App\Models\Cliente;
use App\Models\Venta;

class ProductController extends Controller
{
    public function index(){
        $libros= Libro::all();
        return $libros;
    }

    public function store(Request $request){
        $libro = new Libro;
        $libro -> li_nombre = $request -> li_nombre;
        $libro -> li_autor = $request ->li_autor;
        $libro -> li_genero = $request ->li_genero;
        $libro -> li_precio = $request -> li_precio;

        $libro ->save();
    }


      public function show($id){
          $libro = Libro::find($id);
          return $libro;
      }
      
      public function update(Request $request, $id){
        $libro = Libro::findOrFail($request->$id);
        $libro -> li_titulo = $request -> li_nombre;
        $libro -> li_autor = $request ->li_autor;
        $libro -> li_genero = $request ->li_genero;
        $libro -> li_precio = $request -> li_precio;

        $libro ->save();
        return $libro;
    }

    public function destroy (Request $request,$id){
        $libro = Libro::findOrFail($id);
        $libro -> li_titulo = $request -> li_nombre;
        $libro -> li_autor = $request ->li_autor;
        $libro -> li_genero = $request ->li_genero;
        $libro -> li_precio = $request -> li_precio;

        $libro ->save();
        $libro = Libro::destroy ($id);
        return $libro;
    }


        
    }


