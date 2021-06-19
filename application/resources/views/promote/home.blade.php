@extends('promote.app')
@section('content')

    <style>

        #myVideo {
            /*position: fixed;*/
            right: 0;
            bottom: 0;
            width: 100%;
            max-height: 100%;
        }

        @media screen and (min-width: 300px) and (max-width: 900px){
            .promote_gif{
                width: 300px;
                height: 200px;
            }
            .appointment{
                margin-left: -45px;
            }
            .registerBtn{
                margin-left: 65px;
            }
            #scrollBtn{
                display: none;
            }
        }
        @media screen and (max-width: 1080px) and (min-width: 300px){
            .splide{
                width: 80%;
                margin: auto;
            }
            .splide img{
                height: 200px;
                width: 250px;
                -webkit-box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.75);
                -moz-box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.75);
                box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.75);
                border-radius: 8px;
                margin:12px;
                /*border: 1px solid black;*/
            }
        }
        @media screen and (max-width: 4080px) and (min-width: 1180px){

            .splide img{
                /*height: 200px;*/
                /*width: 250px;*/
                border-radius: 12px;
            }
        }

    </style>
    <div class="pt-5">
        <video autoplay muted id="myVideo" onclick="myFunction()" controls>
            <source src="{{asset('/')}}assets/video/advertise.mp4" type="video/mp4">
        </video>
    </div>
<div class="bgimg-1 pt-5">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-5 col-lg-3 slide-caption hero">
          <h1 class="font-weight-bold">About Us</h1>
          <div>Promote-Up is a full-service innovative and advertising agency. We take your business to the exact and authentic audience where you desire it to be. We plan...
          <a href="{{url('/about')}}" class="text-success" target="_blank"><span class="icon-navigation-arrow-forward"></span> Learn More</a></div>
        </div>

      </div>
    </div>
    <a id="scrollBtn" class="text-success">Discover More <i class="icon-navigation-arrow-forward"></i> <i class="arrow-hide-responsive icon-navigation-arrow-down"></i></a>
    <ul class="sticky-social" style="display: none;">
      <li>Social</li>
      <li><a href="https://www.facebook.com/Promote-Up-118555183388994/" target="_blank" style="border: 2px solid black;padding: 12px 4px 4px 4px;border-radius: 50%;background: #3b5998"><i class="icon-social-facebook" style="font-size: 30px;padding-top: 20px;color:white "></i></a></li>
    </ul>
</div>

  <div class="bgimg-2" id="bgimg-2">
    <div class="container">
      <div class="row">
        <div class="col-sm-10 col-md-5 col-lg-3 slide-caption">
          <p>Our Services</p>
          <h1 class="font-weight-bold">Best service providing and marketing backup</h1>
          <p>We are specialists in Digital Marketing know well how online marketing strategy really works through perfect business models. The first step of having...</p>
          <div class="row">
            <div class="col-12 pr-0 pt-3 my-auto"><a href="{{url('/services')}}" class="text-success"><span class="icon-navigation-arrow-forward"></span> Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="bgimg-3">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-5 col-lg-3 slide-caption">
          <p>Promote-up marketing strategy</p>
          <h1 class="font-weight-bold">Maintaing amazing marketing strategy</h1>
          <p>Get advantages of facebook ad marketing and youtube content marketing</p>
  </div>
      </div>
    </div>
  </div>

{{--    modal for ad--}}


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="margin-left: auto;
  margin-right: auto;">
                    <h3>Welcome to <img src="{{asset('/')}}assets/promote/assets/images/promote-removebg-preview.png" width="260" height="70" alt="Promote-Up logo" title="Promote-Up Homepage"></h3>
                </div>
                <div class="modal-body">

                        <div class="row">
                            <div class="col-md-5 col-lg-5 col-xl-5 col-12"><img class="promote_gif" src="{{asset('/')}}assets/promote/assets/images/promote.gif" title="Promote-Up ad"></div>
                            <div class="col-md-2 col-lg-2 col-xl-2 col-4"></div>
                            <div class="col-md-5 col-lg-5 col-xl-5 col-4"><a href="{{url('/contact')}}" class="btn btn-info btn-sm appointment">Book an appointment!</a></div>
                         </div>
                    <br>
                    <div class="row">
                        <div class="col-md-9 offset-md-2"><h5 style="font-weight: bold"> New in Promote-Up? Register now!</h5></div>
                        <div class="col-md-12 offset-md-4"><h3 style="font-weight: bold"><a href="{{url('/register')}}" class="btn btn-outline-success registerBtn"><img src="{{asset('/')}}assets/promote/service/profile.png" alt="service" width="20" height="20" title="Promote-Up Homepage"> Click to register!</a></h3></div>
                    </div>

                    </div>
            </div>
        </div>
    </div>


{{--    modal ends here--}}

    <div class="container-fluid bg-light py-7" id="partners">
        <div class="row carousel slide bg-light pl-0 pr-0" data-interval="false" data-ride="carousel">
            <div class="col-12 carousel-inner m-0 py-4 text-center">
                <div class="py-2">
                    <h3><strong>Our Clients</strong></h3>
                </div>

                <div class="splide">
                    <div class="splide__slider"> <!-- relative -->
                        <div class="splide__track">
                            <ul class="splide__list">
                                    <li class="splide__slide">
                                        <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/logo%203.png" alt="BIP"
                                                                   data-toggle="tooltip" data-placement="bottom" title="BIP">
                                    </li>
                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/logo.jpg" alt="Karukar"
                                         data-toggle="tooltip" data-placement="bottom" title="karukar">
                                </li>
                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/fuchka.png" alt="Bengal Biscuits"
                                         data-toggle="tooltip" data-placement="bottom" title="FuchkaFactory">
                                </li>
                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/kings.jpg" alt="Kings Dining"
                                         data-toggle="tooltip" data-placement="bottom" title="Kings Dining" >
                                </li>

                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/labonoo.jpg" alt="BIP"
                                                               data-toggle="tooltip" data-placement="bottom" title="BIP">
                                </li>

                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/saena.jpg" alt="BIP"
                                                               data-toggle="tooltip" data-placement="bottom" title="BIP">
                                </li>
                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/classy.png" alt="BIP"
                                                               data-toggle="tooltip" data-placement="bottom" title="BIP">
                                </li>
                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/jounalist.png" alt="BIP"
                                                               data-toggle="tooltip" data-placement="bottom" title="BIP">
                                </li>
                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/shoppers.png" alt="BIP"
                                                               data-toggle="tooltip" data-placement="bottom" title="BIP">
                                </li>

                                <li class="splide__slide">
                                    <img class= "uni-logo img-responsive" src="{{asset('/')}}assets/promote/assets/images/teamwork/dhakat.jpg" alt="BIP"
                                                               data-toggle="tooltip" data-placement="bottom" title="BIP">
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div>
                        <!-- extra contents -->
                    </div>
                    <div class="splide__progress">
                        <div class="splide__progress__bar">
                        </div>
                    </div>
                </div>

            </div>
        </div>
           <div class="offset-md-5 col-md-4 col-sm-10 my-auto">
        <a class="btn btn-success btn-sm" href="{{url('/clients')}}" target="_blank">Show more <span class="icon-navigation-arrow-forward"></span> </a>
        </div>
    </div>

    <div class="container-fluid bg-white py-4 d-none">
        <div class="offset-1 col-md-11 p-0">
          <p><strong>STAY UPTO DATE</strong></p>
          <h5>Email i.e- appleseed@dingi.live</h5>
          <small>Press Enter to Submit</small>
        </div>
    </div>
    <button id="scrollBtn"></button>
@endsection

@section('scripts')
<script src="{{asset('/')}}assets/promote/assets/js/jquery-3.2.1.slim.min.js"></script>
<script src="../cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="{{asset('/')}}assets/promote/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="{{asset('/')}}assets/promote/assets/js/custom.js"></script>

<script type="text/javascript">
    $(window).on('load',function(){
        $('#myModal').modal('show');
    });
</script>

<script>
    (function ($) {
      "use strict";
      $('.carousel').carousel({
        interval: 2000
      })
    })
    (jQuery);
  </script>

<script>

    var video = document.getElementById("myVideo");
    var btn = document.getElementById("myBtn");
video.volume = 0.5;
    function myFunction() {
        if (video.paused) {
            video.play();
            video.muted='false';
            // $('#myVideo').prop('muted',false);

        } else {
            video.pause();

        }
    }
</script>

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
      }else if (cur_url.indexOf("contact") >= 0) {
          $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
          $('#contact').addClass( 'active' );
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
<script>
    var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
    if(width<1080){
        new Splide( '.splide', {
            type:'loop',
            rewind : true,
            perPage: 1,
            autoplay: true,
            autoWidth: true,
            focus    : 'center',
        } ).mount();
    }
    else{
        new Splide( '.splide', {
            type:'loop',
            perPage: 4,
            perMove: 1,
            interval:2500,
            rewind : true,
            autoplay: true,
        } ).mount();
    }
    // console.log(width)
</script>

<script>
    new WOW().init();
</script>
@endsection
