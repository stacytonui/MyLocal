<?php

namespace App\Http\Controllers;

use App\Product;
use App\Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StoresController extends Controller
{

    public function show(Request $request)
    {

        $postData = $request->location;



        $store = Store::where('locations_id',  $postData )->get();
        //($store);
        return view('pages.store',['store' => $store,]);




    }


}
