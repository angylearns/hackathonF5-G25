<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use App\Models\Category;
use App\Models\Location;

class ProductController extends Controller
{
    public function index(){
        $products= Product::all();
        return $products;
    }

    public function store(Request $request){
        $product = new Product;
        $product ->  name = $request -> name;
        $product -> category_id = $request -> category_id;
        $product -> price = $request -> category_id;
        $product -> seller_id =  $request -> seller_id;
        $product -> location_id = $request -> location_id;
        $product -> image = $request -> image;
        $product -> description = $request -> description;
        $product ->save();
    }


    public function show($id){
           $product = Product::find($id);
          return $product;
   }
      
     public function update(Request $request, $id){
        $product = Product::findOrFail($id);
        $product -> name = $request -> name;
        $product -> category_id = $request -> category_id;
        $product -> price = $request -> category_id;
        $product -> seller_id =  $request -> seller_id;
        $product -> location_id = $request -> location_id;
        $product -> image = $request -> image;
        $product -> description = $request -> description;
        $product ->save(); 
        return $product;
    }

    public function destroy (Request $request,$id){
        $product = Product::findOrFail($id);
        $product->delete();
        return response()->json(['message' => 'Producto eliminado correctamente'], 200);
    }


        
    }


