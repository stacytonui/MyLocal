<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home', 'LocationsController@index');
Route::get('/stores/{store}', 'StoresController@show');


Route::get('/test', function (){

    $store=\App\Store::first();

    $products=\App\Product::all();

    $store->products()->attach($products);

    dd($products);


});


Route::post('/stores', 'LocationsController@getLocation');






