<?php

namespace App\Http\Controllers;

use App\Product;
use App\Store;
use Illuminate\Http\Request;

class ProductsController extends Controller
{

    public function index($store){

        $shop = Store::find($store);
        $shopId = session(['key' => $store]);


        //dd($shop);
        $beers = Store::find($store)->products->where('category_id',2);
        $wine=Store::find($store)->products->where('category_id', 1);
        $drinks=Store::find($store)->products->where('category_id', 3);

     //dd($products);
       return view('pages.shop')
           ->with('shop', $shop)
           ->with('wine', $wine)
           ->with('drink', $drinks)
           ->with('beer', $beers);



    }
}
