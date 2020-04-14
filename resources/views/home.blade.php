@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-10 mt-5 ">
            <div class="card">
                <div class="card-header">Delivering To</div>

                <div class="card-body">
                            @if (session('status'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('status') }}
                                </div>
                            @endif

                                <div id="app">
                                    <dropdown-component csrf="{{csrf_token()}}"></dropdown-component>
                                </div>
                                <script src="{{ mix('js/app.js') }}" type="text/javascript"></script>


                        </div>


                </div>
            </div>
        </div>
    </div>


@endsection
