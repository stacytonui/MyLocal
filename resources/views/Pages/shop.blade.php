@extends('layouts.app')

@section('content')
    <section class="banner-bottom py-5">

        <div class="container ">
            <nav aria-label="breadcrumb" style="width: 100%">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Stores</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{$shop->name}}</li>
                </ol>
            </nav>
            @if(session()->has('success_msg'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session()->get('success_msg') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            @endif
            <div class="row pt-4">

                <div class="col-lg-12">

                    <h5 class="text-center">SHOP NOW</h5>
                    <!--/row-->
                    <h4>BEERS</h4>
                    <div class="row shop-wthree-info text-center">
                        @foreach($beer as $beer)

                            <div class="col-lg-3 shop-info-grid text-center mt-4" >
                                <div class="product-shoe-info shoe">
                                    <div class="men-thumb-item">
                                        <img src="{{ asset('images/'.$beer->imagePath) }}" class="img-fluid" alt="">

                                    </div>
                                    <div class="item-info-product">
                                        <h4>
                                            <a href="">{{ $beer->name }} </a>
                                        </h4>

                                        <div class="product_price">
                                            <div class="grid-price">
                                                <span class="money">KES {{ $beer->price }}</span>
                                            </div>
                                        </div>
                                        <form action="{{ route('cart.store') }}" method="POST">
                                            {{ csrf_field() }}
                                            <input type="hidden" value="{{ $beer->id }}" id="id" name="id">
                                            <input type="hidden" value="{{ $beer->name }}" id="name" name="name">
                                            <input type="hidden" value="{{ $beer->price }}" id="price" name="price">
                                            <input type="hidden" value="{{ $beer->imagePath }}" id="img" name="img">
                                            <input type="hidden" value="{{ $shop->id }}" id="shopid" name="shopid">
                                            <input type="hidden" value="1" id="quantity" name="quantity">


                                                <div class="row text-center">
                                                    <button class="btn btn-secondary btn-sm" class="tooltip-test " title="add to cart">
                                                        <i class="fa fa-shopping-cart"></i> add to cart
                                                    </button>
                                                </div>

                                        </form>

                                    </div>
                                </div>

                            </div>


                        @endforeach
                            <div class="form-group col-12">
                                <hr>
                            </div>
                    </div>
                    <!--//row-->
                    <div class="row shop-wthree-info text-center">
                        @foreach($wine as $wine)

                            <div class="col-lg-3 shop-info-grid text-center mt-4">
                                <div class="product-shoe-info shoe">
                                    <div class="men-thumb-item">
                                        <img src="{{ asset('images/'.$wine->imagePath) }}" class="img-fluid" alt="">

                                    </div>
                                    <div class="item-info-product">
                                        <h4>
                                            <a href="">{{ $wine->name }} </a>
                                        </h4>

                                        <div class="product_price">
                                            <div class="grid-price">
                                                <span class="money">KES {{ $wine->price }}</span>
                                            </div>
                                        </div>
                                        <ul class="stars">
                                            <li><a href="#"><span class="fa fa-plus" aria-hidden="true"></span></a></li>
                                            <li><a href="#"><span>1</span></a></li>
                                            <li><a href="#"><span class="fa fa-minus" aria-hidden="true"></span></a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <!--//row-->

                </div>

            </div>
        </div>




    </section>

@endsection


