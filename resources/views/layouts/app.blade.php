<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
@include('inc.head')

<!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">


</head>
<body>
<div id="app">
    <header class=" py-sm-3 pt-3 pb-2" id="home" style=" background: #74d2e7;">
        <div class="container">
            <!-- nav -->
            <div class="top-w3pvt d-flex">
                <div id="logo">
                    <h1> <a href="/"><span class="log-w3pvt">My</span>local</a> <label class="sub-des">Online Store</label></h1>
                </div>

                <div class="forms ml-auto">
                    @guest

                        <a href="{{ route('login') }}" class="btn"><span class="fa fa-user-circle-o"></span> Sign In</a>
                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                        @endif
                    @else
                        <a href="#" class="btn"><span class="fa fa-shopping-cart"></span> Cart</a>
                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">{{ Auth::user()->name }} <span class="fa fa-caret-down"></span></button>
                            <div id="myDropdown" class="dropdown-content">
                                <a href="#" class="btn"><span class="fa fa-user"></span> My Profile</a>
                                <a href="{{ route('logout') }}"onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
                                   class="btn"><span class="fa fa-pencil-square-o"></span> {{ __('Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>

                            </div>
                        </div>


                    @endguest
                </div>
            </div>

        </div>
    </header>



    <main>
        @yield('content')
    </main>
</div>
</body>
</html>
