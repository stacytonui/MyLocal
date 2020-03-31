<?php

namespace App\Http\Controllers;

use App\Location;
use App\Store;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;

class LocationsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param $location
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $locations = Location::all();
        return view('home', ['location' => $locations,]);
    }
   /** public function list()
    * {
 *
* $locations = Location::all();
 *
* return view('home', ['locations'=> $locations]);
    * }
 *
* /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */

    public function create()
    {
        //
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getLocation(Request $request)
    {
        $data = $request->location;

        $store = Store::where('locations_id', $data)->get();
       //dd($store);
        return view('pages.store',['store' => $store,]);

    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
