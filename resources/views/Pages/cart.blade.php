@extends('layouts.app')

@section('content')
    <section class="banner-bottom py-5">
    <div class="container mt-5" >
        <div class="col-12">

        </div>
        @if(session()->has('success_msg'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session()->get('success_msg') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
        @endif
        @if(session()->has('alert_msg'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                {{ session()->get('alert_msg') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
        @endif
        @if(count($errors) > 0)
            @foreach($errors0>all() as $error)
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ $error }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            @endforeach
        @endif
        <div class="row justify-content-center mt-5" >
            <div class="col-lg-7">
                <br>
                @if(\Cart::getTotalQuantity()>0)

                    <h4>{{ \Cart::getTotalQuantity()}} Product(s) In Your Cart from  <b>{{$shop-> name}}</b></h4><br>
                @else
                    <h4>No Product(s) In Your Cart</h4><br>
                    <a href="/stores/{{$shop-> id}}" class="btn btn-dark">Continue Shopping</a>
                @endif

                @foreach($cartCollection as $item)

                    <div class="row">
                        <div class="col-lg-3">
                            <img src="/images/{{ $item->attributes->image }}" class="img-thumbnail" width="200" height="200">
                        </div>
                        <div class="col-lg-5">
                            <p>
                                <b><a href="">{{ $item->name }}</a></b><br>
                                <b>Price: </b>KES {{ $item->price }}<br>

                                <b>Sub Total: </b>KES {{ \Cart::get($item->id)->getPriceSum() }}<br>
                                {{--                                <b>With Discount: </b>${{ \Cart::get($item->id)->getPriceSumWithConditions() }}--}}
                            </p>
                        </div>
                        <div class="col-lg-4 pl-3">
                           <div class="row">

                                <form action="{{ route('cart.update') }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="input-group">
                                        <input type="hidden" value="{{ $item->id}}" id="id" name="id">
                                        <input type="number" class="form-control form-control-sm mb-1" value="{{ $item->quantity }}"
                                               id="quantity" name="quantity" style="width: 70px; margin-right: 10px;">
                                        <button class="btn btn-secondary btn-sm mb-1" style="margin-right: 25px;"><i class="fa fa-edit"></i>Update</button>
                                    </div>

                                </form>


                                <form action="{{ route('cart.remove') }}" method="POST">
                                    {{ csrf_field() }}
                                    <input type="hidden" value="{{ $item->id }}" id="id" name="id">
                                    <button class="btn btn-dark btn-sm remove" style="margin-right: 10px;"><i class="fa fa-trash"> Remove Item</i></button>
                                </form>
                               </div>

                        </div>
                    </div>
                    <hr>
                @endforeach
                @if(count($cartCollection)>0)
                    <form action="{{ route('cart.clear') }}" method="POST">
                        {{ csrf_field() }}
                        <button class="btn red-button">Clear Cart</button>
                    </form>
                @endif
            </div>
            @if(count($cartCollection)>0)
                <div class="col-lg-5">
                    <div class="card">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><b>Total: </b>KES {{ \Cart::getTotal() }}</li>
                        </ul>
                    </div>
                    <br>

                    <a href="/stores/{{$shop-> id}}" class="btn btn-dark mb-2">Continue Shopping</a>
                    <a href="/checkout" class="btn red-button">Proceed To Checkout</a>
                </div>
            @endif
        </div>

        <br><br>
    </section>
@endsection

@section('extra-js')

<script>

</script>

@endsection

