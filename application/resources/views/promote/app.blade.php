<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta content="telephone=no" name="format-detection">
    <meta content="yes" name="apple-mobile-web-app-capable">

    <meta property="og:type"               content="website" />
    <meta property="og:title"              content="Promote-Up" />
    <meta property="og:description"        content="Promote, Boost and Establish Business" />

    {{-- <meta property="og:image"              content="{{asset('/')}}assets/images/cover1.jpg" /> --}}

    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <link href="{{asset('/')}}assets/promote/assets/images/cover1.jpg" rel="icon">
    <meta content="Nghia Minh Luong" name="author">
    <meta content="Default Description" name="keywords">
    <meta content="Default keyword" name="description">
    <meta name="csrf_token" content="{{ csrf_token() }}" />
    <title>{{env('APP_NAME')}} | {{@$pageTitle}}</title>
    <!-- Fonts-->
    {{--    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900"--}}
    {{--          rel="stylesheet">--}}

    {{-- for promote up --}}


<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('/')}}assets/promote/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('/')}}assets/promote/assets/css/custom.css">
    <link rel="stylesheet" href="{{asset('/')}}assets/promote/assets/css/followr.css">

    <!-- Icons & stuff -->
    <link rel="stylesheet" href="{{asset('/')}}assets/promote/assets/fonts/icon/style.css">
    <link rel="icon" type="image/png" href="{{asset('/')}}assets/promote/assets/images/promote-removebg-preview.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="{{asset('/')}}assets/promote/assets/images/promote-removebg-preview.png" sizes="16x16" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@2.4.21/dist/css/splide.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@2.4.21/dist/css/themes/splide-default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- Map Scripts -->


    <link rel="stylesheet" href="{{asset('/')}}assets/promote/assets/css/dingi-gl.css">




    {{-- end here --}}





    {{--    <script src="{{asset('/')}}assets/sweet-alert/sweetalert.min.js" type="text/javascript"></script>--}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>

    <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--WARNING: Respond.js doesn't work if you view the page via file://-->
    <!--[if lt IE 9]>
<!--    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>-->
    <!--    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--><![endif]-->
</head>
<body class="ps-loading">

<button onclick="topFunction()" id="backBtn" class="btn btn-success" title="Go to top"><i class="icon-navigation-collapse"></i></button>

@include('promote.layouts.header')

@yield('content')
@include('promote.layouts.footer')

<!-- JS Library-->

{{-- for promote --}}

<!-- Global site tag (gtag.js) - Google Analytics -->

<script type="text/javascript" src="{{asset('/')}}assets/promote/assets/js/dingi-gl.js"></script>
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-133457887-1"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@latest/dist/js/splide.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js" integrity="sha512-Eak/29OTpb36LLo2r47IpVzPBLXnAMPAVypbSZiZ4Qkf8p/7S/XRG5xp7OKWPPYfJT6metI+IORkR5G8F900+g==" crossorigin="anonymous"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-133457887-1');
</script>

<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            xfbml            : true,
            version          : 'v9.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

<!-- Your Chat Plugin code -->
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="118555183388994"
     theme_color="#44bec7"
     logged_in_greeting="Welcome to Promote-Up"
     logged_out_greeting="Welcome to Promote-Up">
</div>

@yield('scripts')
</body>
</html>
