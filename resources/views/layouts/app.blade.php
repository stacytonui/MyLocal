<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
@include('inc.head')

<!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">


</head>
<body>
<div id="app">
    <nav class="navbar navbar-expand-md navbar-light  fixed-top" style="width: 100%; background-color: antiquewhite; margin-top: 0px">
        <div class="container">
            <div id="logo">
                <h1> <a href="/"><span class="log-w3pvt">My</span>local</a> <label class="sub-des">Online Store</label></h1>
            </div>


            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">

                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">

                    <div class="forms ml-auto">
                        <!-- Authentication Links -->
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle"
                               href="#" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false"
                            >CART
                                <span class="badge badge-pill">
                            <i class="fa fa-shopping-cart" style="font-size: 20px; background-color: antiquewhite;"></i> {{ \Cart::getTotalQuantity()}}
                        </span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right cart-menu" aria-labelledby="navbarDropdown" style=" padding: 0px; border-color: #9DA0A2">
                                <ul class="list-group dropdown-item" style="">
                                    @include('inc.cart-drop')
                                </ul>

                            </div>
                        </li>
                        @guest
                        <a href="{{ route('login') }}" class="btn"><span class="fa fa-user-circle-o"></span> Sign In</a>
                        @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                    </div>
                    @endif
                    @else



                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        </li>

                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <main class="py-4">
        @yield('content')
    </main>
@yield('extra-js')

</div>
</body>
</html>
