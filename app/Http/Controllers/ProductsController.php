<?php

namespace App\Http\Controllers;

use App\Product;
use App\Store;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index($store){

        $shop = Store::find($store);
        $shopId = session(['key' => $store]);


        //dd($shop);
        $beers = Store::find($store)->products->where('category_id',2);
        $wine=Store::find($store)->products->where('category_id', 1);

     //dd($products);
       return view('pages.shop')
           ->with('shop', $shop)
           ->with('wine', $wine)
           ->with('beer', $beers);



    }
}
