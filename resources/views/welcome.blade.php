
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">



<head>
    <title>Online Drinks Delivery Service</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Nairobi's fastest online drinks delivery system" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap.css') }}">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="{{ asset('css/font-awesome.css') }}" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>
<div class="main-sec" style="margin-top: 0px">
    <!-- //header -->
    <header class="py-sm-3 pt-3 pb-2" id="home">
        <div class="container">
            <!-- nav -->
            <div class="top-w3pvt d-flex">
                <div id="logo">
                    <h1> <a href="index.html"><span class="log-w3pvt">My</span>local</a> <label class="sub-des">Online Store</label></h1>
                </div>

                <div class="forms ml-auto">

                    <a href="{{ route('login') }}" class="btn"><span class="fa fa-user-circle-o"></span> Sign In</a>
                    <a href="{{ route('register') }}" class="btn"><span class="fa fa-pencil-square-o"></span> Sign Up</a>
                </div>
            </div>
            <div class="nav-top-wthree">
                <nav>

                </nav>
                <!-- //nav -->

                <div class="clearfix"></div>
            </div>
        </div>
    </header>
    <!-- //header -->
    <!--/banner-->
    <div class="banner-wthree-info container">
        <div class="col-lg-12 text-center banner-img">
            <img src="images/bottless.png" alt="part image" class="img-fluid">
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3>Beer, Wines & Spirits <br> <span class="mt-3" style="color: #1b1e21; text-transform: capitalize;" >Delivered within Minutes</span></h3>
                <a href="{{ route('login') }}" class="btn shop mb-2">Shop Now</a>
            </div>


        </div>
    </div>
</div>

<!-- //banner-->
<!--/banner-bottom -->
<section class="banner-bottom py-5">
    <div class="container py-md-3">
        <div class="row grids-wthree-info text-center">
            <div class="col-lg-4 ab-content">
                <div class="ab-info-con">
                    <h4>Local Stores</h4>
                    <p>Lorem ipsum dolor sit,Nulla pellentesque dolor ipsum laoreet eleifend integer,Pellentesque maximus libero.</p>
                </div>
            </div>
            <div class="col-lg-4 ab-content">
                <div class="ab-info-con">
                    <h4>Best Price</h4>
                    <p>Lorem ipsum dolor sit,Nulla pellentesque dolor ipsum laoreet eleifend integer,Pellentesque maximus libero.</p>
                </div>
            </div>
            <div class="col-lg-4 ab-content">
                <div class="ab-info-con">
                    <h4>Fast Delivery</h4>
                    <p>Lorem ipsum dolor sit,Nulla pellentesque dolor ipsum laoreet eleifend integer,Pellentesque maximus libero.</p>
                </div>
            </div>

        </div>
    </div>
</section>





<!--/gallery -->

<!--//newsletter -->

<!-- footer -->
<!-- //copyright -->

</body>

</html>



