@extends('layouts.app')

@section('content')


                <div class="container mt-5 pt-5">

                    @if(session()->has('success_msg'))
                        <div class="alert alert-success alert-dismissible fade show " role="alert">
                            {{ session()->get('success_msg') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                    @endif
                    <div class="row pt-4">

                        <div class="col-lg-12">

                            <h4 class="text-center">SHOP NOW</h4>

                            <!--/row-->
                            <h5>BEERS</h5>
                            <div class="row shop-wthree-info text-center">
                                @foreach($beer as $beer)

                                    <div class="col-lg-3 shop-info-grid text-center mt-4">
                                        <div class="product-shoe-info shoe" style="height: 400px">
                                            <div class="men-thumb-item" style="height: 240px;">
                                                <img src="{{ asset('images/'.$beer->imagePath) }}" class="img-fluid"
                                                     alt="">

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
                                                    <input type="hidden" value="{{ $beer->name }}" id="name"
                                                           name="name">
                                                    <input type="hidden" value="{{ $beer->price }}" id="price"
                                                           name="price">
                                                    <input type="hidden" value="{{ $beer->imagePath }}" id="img"
                                                           name="img">
                                                    <input type="hidden" value="{{ $shop->id }}" id="shopid"
                                                           name="shopid">
                                                    <input type="hidden" value="1" id="quantity" name="quantity">


                                                    <div class="row ">
                                                        <button class="btn btn-secondary btn-sm text-center"
                                                                title="add to cart">
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
                            <h5>WINE</h5>
                            <div class="row shop-wthree-info text-center">
                                @foreach($wine as $wine)

                                    <div class="col-lg-3 shop-info-grid text-center mt-4">
                                        <div class="product-shoe-info shoe">
                                            <div class="men-thumb-item">
                                                <img src="{{ asset('images/'.$wine->imagePath) }}" class="img-fluid"
                                                     alt="">

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
                                                <form action="{{ route('cart.store') }}" method="POST">
                                                    {{ csrf_field() }}
                                                    <input type="hidden" value="{{ $wine->id }}" id="id" name="id">
                                                    <input type="hidden" value="{{ $wine->name }}" id="name"
                                                           name="name">
                                                    <input type="hidden" value="{{ $wine->price }}" id="price"
                                                           name="price">
                                                    <input type="hidden" value="{{ $wine->imagePath }}" id="img"
                                                           name="img">
                                                    <input type="hidden" value="{{ $wine->id }}" id="shopid"
                                                           name="shopid">
                                                    <input type="hidden" value="1" id="quantity" name="quantity">


                                                    <div class="row text-center">
                                                        <button class="btn btn-secondary btn-sm" class="tooltip-test "
                                                                title="add to cart">
                                                            <i class="fa fa-shopping-cart"></i> add to cart
                                                        </button>
                                                    </div>

                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <!--//row-->

                        </div>

                    </div>
                </div>

    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>



@endsection
