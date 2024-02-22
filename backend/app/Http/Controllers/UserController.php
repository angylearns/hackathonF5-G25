<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use App\Models\Category;
use App\Models\Location;
use App\Models\Order;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Response;

class UserController extends Controller
{
    public function index(){
        $users= User::all();
        return $users;
    }

    public function store(Request $request){
        $user = new User;
        $user ->  username = $request -> username;
        $user -> seller = $request -> seller;
        $user -> email = $request -> email;
        $user->password = Hash::make($request->password);
        $user -> address =  $request -> address;
        $user -> location_id = $request -> location_id;
        $user -> first_name = $request -> first_name;
        $user -> last_name = $request -> last_name;
        $user -> zip_code = $request -> zip_code;
        $user -> mobile = $request -> mobile;
        $user ->save();
    }
    
    public function show($id){
           $user = User::find($id);
          return $user;
   }
      
     public function update(Request $request, $id){
        $user = User::findOrFail($id);
        $user ->  username = $request -> username;
        $user -> seller = $request -> seller;
        $user -> email = $request -> email;
        $user-> password = Hash::make($request->password);
        $user -> address =  $request -> address;
        $user -> location_id = $request -> location_id;
        $user -> first_name = $request -> first_name;
        $user -> last_name = $request -> last_name;
        $user -> zip_code = $request -> zip_code;
        $user -> mobile = $request -> mobile;
        $user ->save();
        return $user;
    }

    public function destroy ($id){
        try {
            $user = User::findOrFail($id);
            $user->delete();
            
            return response()->json(['message' => 'The user has been successfully deleted'], Response::HTTP_OK);
        } catch (\Exception $e) {
            return response()->json(['message' => 'An error occurred while deleting the user'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
        
    }