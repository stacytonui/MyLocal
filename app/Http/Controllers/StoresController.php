<?php

namespace App\Http\Controllers;

use App\Product;
use App\Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StoresController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function show(Store $store)
    {
        //$store->products()->where('id', $store)->get();
        //$products =Store::where('id', $storeid)->get();
        //$store = Store::where('locations_id', $data)->get();



       //$local = Store::findorfail($store);
        //$user = Auth::user();

       // return dd($user);
        return view('pages.shop', compact('store'));

    }


}
