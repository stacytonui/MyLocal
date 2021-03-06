@extends('layouts.app')

@section('content')
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <h4>Login to place your order now</h4>
                    <br>
                    <span class="fa fa-unlock-alt"></span>
                </div>
                <div class="content-bottom">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="field-group">


                                <div class="content-input-field">
                                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" placeholder="Your Email Address" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="field-group">


                                <div class="content-input-field">
                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" required autocomplete="current-password">

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>



                            <div class="content-input-field">

                                    <button type="submit" class="btn">
                                        {{ __('Login') }}
                                    </button>



                            </div>
                            <ul class="list-login">
                                <li class="switch-slide">
                                    <span class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                        <label class="fswitch" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </span>
                                </li>
                                <li>
                                    @if (Route::has('password.request'))
                                        <a class="text-right" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif

                                </li>
                                <li class="clearfix"></li>
                            </ul>
                            <ul class="list-login-bottom">
                                <li class="">
                                    <a href="{{ route('register') }}" class="">Don't have an Account?</a>
                                </li>
                                <li class="">
                                    <a href="#" class="text-right">Need Help?</a>
                                </li>
                                <li class="clearfix"></li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>

    </section>
@endsection
