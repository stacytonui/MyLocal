<?php

namespace App\Http\Controllers;

use App\Store;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function cart()  {

        $cartCollection = \Cart::getContent();
        //dd($cartCollection);
        $shopId = session('key');

        $shop= Store::find($shopId);
      //dd($shopId);
        return view('pages.cart')->with(['cartCollection' => $cartCollection])
                                        ->with('shop', $shop);
    }

    public function add(Request $request){

        $shopId= $request-> shopid;
        $shop = Store::find($shopId);
        //dd($shop);
        \Cart::add(array(
            'id' => $request->id,
            'name' => $request->name,
            'price' => $request->price,
            'shopid'=>$request->shopid,
            'quantity' => $request->quantity,
            'attributes' => array(
                'image' => $request->img,

            )
        ));


        //return redirect()->route('cart.index')->with('shop', $shop);
        return back()->with('success_msg', 'Item added to Cart');

    }
    public function remove(Request $request){
        \Cart::remove($request->id);
        return redirect()->route('cart.index')->with('success_msg', 'Item is removed!');
    }

    public function update(Request $request){
        \Cart::update($request->id,
            array(
                'quantity' => array(
                    'relative' => false,
                    'value' => $request->quantity
                ),
            ));
        return redirect()->route('cart.index')->with('success_msg', 'Cart is Updated!');
    }
    public function clear(){
        \Cart::clear();
        return redirect()->route('cart.index')->with('success_msg', 'Cart is cleared!');
    }
}
