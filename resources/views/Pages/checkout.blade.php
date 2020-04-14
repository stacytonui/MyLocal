@extends('layouts.app')

@section('content')
    <div class="container mt-5">

            <div class="row justify-content-center">
                <div class="col-md-12 mt-5">

                    <div class="card">
                        <div class="card-body px-5">

                            <form>

                                    <div class="row">
                                        <div class="col">
                                            <label>Order for:</label>
                                            <input type="text" class="form-control" value="{{ $user->name }} ">
                                        </div>
                                        <div class="col">
                                            <label>Phone Number:</label>
                                            <input type="text" class="form-control" value="{{ $user->phone }}">
                                        </div>
                                    </div>
                                <hr>
                                <h4>Delivery Details</h4>
                                <hr>
                                <div class="row">


                                        <label>Delivery Address</label>
                                        <input type="text" class="form-control" placeholder="Estate/Apartment Name">

                                        <label>House Number</label>
                                        <input type="text" class="form-control" placeholder="House No">



                                        <label>Preferences (if any)</label>
                                    <textarea class="form-control rounded-0" id="textarea" rows="5"></textarea>

                                    <div class="justify-content-center">
                                        <button class="btn red-button justify-content-center">Submit</button></div>

                                    </div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
    </div>

@endsection
