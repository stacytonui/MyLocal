@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10 mt-2 ">
                <div class="container py-md-5">
                    <div class="row grids-wthree-info">
                        @foreach($store as $store)
                        <div class="col-lg-3 bag-img">
                            <img src="{{ asset('images/bottless.png') }}" class="img-fluid" alt="" />
                        </div>
                        <div class="col-lg-9 mb-2 ab-info-con ab-inf-page text-left">

                                <h4>{{$store -> name}}</h4>
                                <p>Lorem ipsum dolor sit,Nulla pellentesque dolor ipsum laoreet eleifend integer,Pellentesque maximus libero.Lorem ipsum dolor sit,Nulla pellentesque dolor ipsum laoreet eleifend integer,Pellentesque maximus libero.</p>
                                <a href="/stores/{{$store->id}}" class="btn shop mt-4 mb-4">Place Order</a>


                        </div>
                            <div class="form-group col-12">
                                <hr>
                            </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection
