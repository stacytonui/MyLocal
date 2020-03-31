
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
    <link rel="stylesheet" href=" {{ asset('css/bootstrap.css') }}">
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
<div class="main-sec">
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
                <div class="search-form ml-auto">
                    <div class="form-w3layouts-grid">
                        <form action="#" method="post" class="newsletter">
                            <input class="search" type="search" placeholder="Search here..." required="">
                            <button class="form-control btn" value=""><span class="fa fa-search"></span></button>
                        </form>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </header>
    <!-- //header -->
    <!--/banner-->
    <div class="banner-wthree-info container">
        <div class="row">
            <div class="col-lg-5 banner-left-info">
                <h3>Beer, Wines & Spirits <span>Delivered in Minutes</span></h3>
                <a href="shop.html" class="btn shop">Shop Now</a>
            </div>

            <div class="col-lg-7 banner-img">
                <img src="images/bottles.png" alt="part image" class="img-fluid">
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
<section class="banner-bottom py-5">
    <div class="container py-md-5">


        <div class="row">
            <div class="col-lg-4 gallery-content-info text-center mt-lg-5">
                <h3 class="title-wthree mb-lg-5 mb-4">Trending Now </h3>
                <p>Lorem ipsum dolor sit,Nulla pellentesque dolor ipsum laoreet eleifend integer,Pellentesque maximus libero.</p>
                <a href="shop.html" class="btn shop mt-3">Shop Now</a>

            </div>
            <div class="col-lg-8 gallery-content">
                <div class="row">
                    <div class="col-md-4 col-sm-6 gal-img">
                        <a href="#gal1"><img src="images/g1.jpg" alt="Baggage" class="img-fluid mt-4"></a>
                    </div>
                    <div class="col-md-4 col-sm-6 gal-img">
                        <a href="#gal2"><img src="images/g2.jpg" alt="Baggage" class="img-fluid mt-4"></a>
                    </div>
                    <div class="col-md-4 col-sm-6 gal-img">
                        <a href="#gal3"><img src="images/g3.jpg" alt="Baggage" class="img-fluid mt-4"></a>
                    </div>
                    <div class="col-md-4 col-sm-6 gal-img">
                        <a href="#gal1"><img src="images/g4.jpg" alt="Baggage" class="img-fluid mt-4"></a>
                    </div>
                    <div class="col-md-4 col-sm-6 gal-img">
                        <a href="#gal2"><img src="images/g5.jpg" alt="Baggage" class="img-fluid mt-4"></a>
                    </div>
                    <div class="col-md-4 col-sm-6 gal-img">
                        <a href="#gal3"><img src="images/g6.jpg" alt="Baggage" class="img-fluid mt-4"></a>
                    </div>

                </div>
                <!-- gallery popups -->
                <!-- popup-->
                <div id="gal1" class="popup-effect">
                    <div class="popup">
                        <img src="images/g1.jpg" alt="Popup image" class="img-fluid mt-4" />
                        <a class="close" href="#gallery">&times;</a>
                    </div>
                </div>
                <!-- //popup -->
                <!-- popup-->
                <div id="gal2" class="popup-effect">
                    <div class="popup">
                        <img src="images/g2.jpg" alt="Popup image" class="img-fluid mt-4" />
                        <a class="close" href="#gallery">&times;</a>
                    </div>
                </div>
                <!-- //popup -->
                <!-- popup-->
                <div id="gal3" class="popup-effect">
                    <div class="popup">
                        <img src="images/g3.jpg" alt="Popup image" class="img-fluid mt-4" />
                        <a class="close" href="#gallery">&times;</a>
                    </div>
                </div>
                <!-- //popup -->
                <!-- //gallery popups -->

            </div>
        </div>

    </div>
</section>
<!-- //gallery-->
<!--/newsletter -->
<section class="newsletter-w3pvt py-5">
    <div class="container py-md-5">
        <form method="post" action="#">
            <p class="text-center">Subscribe to our mailing list to receive updates on new arrivals, special offers and other discount information.</p>
            <div class="row subscribe-sec">
                <div class="col-md-9">
                    <input type="email" class="form-control" id="email" placeholder="Enter Your Email.." name="email" required="">

                </div>
                <div class="col-md-3">

                    <button type="submit" class="btn submit">Subscribe</button>
                </div>

            </div>
        </form>
    </div>
</section>
<!--//newsletter -->

<!-- footer -->
@include('inc.footer')
<!-- //copyright -->

</body>

</html>



