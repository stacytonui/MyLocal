@extends('layouts.app')

@section('content')


<section class="banner-bottom py-5">
    <div class="container">
        <div class="content-grid">
            <div class="text-center icon">
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
<section class="shipping-wthree">
    <div class="shiopping-grids d-lg-flex">
        <div class="col-lg-4 shiopping-w3pvt-gd text-center">
            <div class="icon-gd"><span class="fa fa-truck" aria-hidden="true"></span>
            </div>
            <div class="icon-gd-info">
                <h3>FREE SHIPPING</h3>
                <p>On all order over $2000</p>
            </div>
        </div>
        <div class="col-lg-4 shiopping-w3pvt-gd sec text-center">
            <div class="icon-gd"><span class="fa fa-bullhorn" aria-hidden="true"></span></div>
            <div class="icon-gd-info">
                <h3>FREE RETURN</h3>
                <p>On 1st exchange in 30 days</p>
            </div>
        </div>
        <div class="col-lg-4 shiopping-w3pvt-gd text-center">
            <div class="icon-gd"> <span class="fa fa-gift" aria-hidden="true"></span></div>
            <div class="icon-gd-info">
                <h3>MEMBER DISCOUNT</h3>
                <p>Register &amp; save up to $29%</p>
            </div>

        </div>
    </div>

</section>
@endsection


