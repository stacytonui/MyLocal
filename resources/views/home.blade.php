@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10 mt-5 ">
            <div class="card">
                <div class="card-header">Enter Your Location</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                        <form class="form-inline" method="post" action="/pages/store">
                            @csrf
                            <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Preference</label>
                            <select class="custom-select my-1 mr-sm-2" name="location" id="inlineFormCustomSelectPref">
                                <option selected>Choose...</option>
                                @foreach($location as $location)
                                    <option name="location" value="{{$location->id}}" >{{ $location->name }}</option>
                                @endforeach
                            </select>
                            <button type="submit"  class="btn btn-primary my-1 align-items-center">Available Stores</button>
                        </form>


                        </div>


                </div>
            </div>
        </div>
    </div>


@endsection
