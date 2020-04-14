@extends('layouts.app')

@section('content')


<section class="banner-bottom py-5">
    <div class="container">
        <div class="content-grid">
            <div class="text-center icon">
                <h4>Sign up place your order now</h4>
                <span class="fa fa-user-circle-o"></span>
            </div>
            <div class="content-bottom">
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="field-group">

                        <div class="content-input-field">
                            <input id="name" type="text" class="@error('name') is-invalid @enderror" name="name" placeholder="Your Name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>
                    <div class="field-group">

                        <div class="content-input-field">
                            <input id="email" type="email" class="@error('email') is-invalid @enderror" name="email" placeholder="Your Email" value="{{ old('email') }}" required autocomplete="email">

                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>
                    <div class="field-group">

                        <div class="content-input-field">
                            <input id="phone" type="varchar" class="form-control @error('Phone Number') is-invalid @enderror" placeholder="Your Phone No" name="phone" required autocomplete="phone">

                            @error('phone')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>
                    <div class="field-group">

                        <div class="content-input-field">
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Your Password" name="password" required autocomplete="new-password">

                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>
                    <div class="field-group">
                        <div class="content-input-field">
                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password" required autocomplete="new-password">
                        </div>
                    </div>
                    <div class="content-input-field">
                        <button type="submit" class="btn">Sign Up</button>
                    </div>
                    <div class="list-login-bottom text-center mt-lg-5 mt-4">

                        <a href="#" class="">By clicking Signup, I agree to your terms</a>



                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /login -->
<!--/shipping-->

@endsection


