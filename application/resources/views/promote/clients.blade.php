@extends('promote.app')
@section('content')

<div class="bgimg-client mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6 slide-caption">
                <!-- <h1 class="font-weight-bold text-white">About</h1> -->
            </div>
        </div>
    </div>
</div>





<div class="container-fluid bg-white py-5">
    <div class="row">
        <div class="container">
            <div class="container-fluid py-7">
                <div class="row">
                    <div class="container">
                        <div class="row text-center">
                            <div class="offset-1 col-10 my-auto">
                                <h4 class="font-weight-bold">Our Happy Clients</h4>
                                <p>Clients are the most important aspect Of Business</p>
                                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block w-100" src="{{asset('/')}}assets/promote/assets/images/client%20post.jpg" alt="First slide">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="{{asset('/')}}assets/promote/assets/images/client%20post%202.jpg" alt="Second slide">
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block w-100" src="{{asset('/')}}assets/promote/assets/images/anotherpost.jpg" alt="Third slide">
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- This button is only used for fixing a simple bug. Do not remove it -->
<button id="scrollBtn"></button>





@endsection

@section('scripts')
<script src="{{asset('/')}}assets/promote/assets/js/jquery-3.2.1.slim.min.js"></script>
<script src="../cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="{{asset('/')}}assets/promote/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="{{asset('/')}}assets/promote/assets/js/custom.js"></script>

<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};
    
    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("backBtn").style.display = "block";
            document.getElementById("scrollBtn").style.display = "none";
        } else {
            document.getElementById("backBtn").style.display = "none";
            document.getElementById("scrollBtn").style.display = "block";
        }
    }
    
    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
    
    $("#scrollBtn").click(function() {
        $('html,body').animate({
            scrollTop: $(".bgimg-2").offset().top},
            'fast');
    });
    
    // function scrollBelow() {
    //     // document.body.scrollTop = 150;
    //     // document.documentElement.scrollTop = 150;
    // }
    
    //navbar white for about page
    $(document).ready(function () {
      var cur_url = window.location.href;
        if (cur_url.indexOf("about") >= 0) {
            $('nav').addClass( 'scrolled' );
        }
    });
    
    //navbar background change on scroll
    $(window).scroll(function(){
      var cur_url = window.location.href;
        
        if (cur_url.indexOf("about") >= 0) {
            $('nav').addClass( 'scrolled' );
        }else{
          $('nav').toggleClass('scrolled', $(this).scrollTop() > 50);
        }
    
    });
    
    /* Active navigation menu*/
    $(document).ready(function () {

var cur_url = window.location.href;

if (cur_url.indexOf("about") >= 0) {
    $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
    $('#about').addClass( 'active' );
}else if (cur_url.indexOf("clients") >= 0) {
    $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
    $('#clients').addClass('active');
}else{
    $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
    $('#home').addClass( 'active' );
}

$("#life_map").click(function(){
    $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
    $('#life_map').addClass( 'active' );
});
$("#life_lifestyle").click(function(){
    $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
    $('#life_lifestyle').addClass( 'active' );
});
});
    
    </script>
@endsection