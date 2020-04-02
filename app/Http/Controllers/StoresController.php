<?php

namespace App\Http\Controllers;

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
        // $local = \App\Store::find($shop);
       //$local = Store::findorfail($store);
        //$user = Auth::user();

       // return dd($user);
        return view('pages.shop', compact('store'));

    }
}
