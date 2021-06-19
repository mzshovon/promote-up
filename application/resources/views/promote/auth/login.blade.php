@extends('promote.app')
@section('content')


    <br>
    <br>
    <br>
    <br>
    <br>


<div class="bgimg-login">
	<div class="container">
		<div class="row">
			<div class="col-md-5 slide-caption">
                <div class="container-fluid bg-white py-5">
                    <div class="row">
                        <div class="container">
                            <div class="offset-md-1 col-md-6 col-6 my-auto">
                            <h1 style="text-align: center">LOGIN</h1>
                            </div>
                                <div class="offset-md-1 col-md-6 col-6 my-auto">
                                    <form class="pt-3" method="POST" action="{{ route('login') }}">
                                        @csrf
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="inputEmail" placeholder="Your E-mail" name="email" required>
                                        </div>
                                          <div class="form-group">
                                            <input type="password" class="form-control" id="inputSubject" placeholder="password" name="password" required>
                                        </div>
                                        <button type="submit" id="submission" class="btn btn-success float-left">SUBMIT</button>
                                    </form>


                                </div>

                        </div>

                        <div class="offset-md-2 col-md-6 col-6 my-auto" style="font-size: 14px;font-weight: 400">
                            New here?
                            <a href="{{url('/register')}}" style="color: #5dbcd2;"> Please register to be member </a>
{{--                            <a data-toggle="modal" data-target="#GSCCModal" style="color: #5dbcd2;cursor: pointer"> Please register to be member </a>--}}
                        </div>
                    </div>
                </div>

			</div>

		</div>
	</div>
</div>

    <div id="GSCCModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;  </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid bg-white py-5">



                        <div class="row">
                            <div class="container">
                                <h1 style="text-align: center">Register</h1>
                                <div class="row">
                                    <div class="col-md-12 col-12 my-auto">




                                        <form class="pt-3" method="post" action="{{ route('register') }}">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="inputName" placeholder="Your Name" name="name" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" id="inputEmail" placeholder="Your E-mail" name="email" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="inputSubject" placeholder="Your mobile number" name="phone" required>
                                            </div>
                                            <div class="form-group">
                                                <textarea class="form-control" id="inputMessage" rows="4" placeholder="Your address" name="address" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="inputSubject" placeholder="password" name="password" required>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" id="inputSubject" placeholder="confirm your password" name="conf_password" required>
                                            </div>
                                            {{-- <div class="form-group">
                                              <input type="text" class="form-control" id="inputSubject" placeholder="Subject like digital marketing, custom graphics, short animation or web developement" name="subject" required>
                                          </div>
                                          <div class="form-group">
                                              <textarea class="form-control" id="inputMessage" rows="8" placeholder="What you want to say" name="message" required onkeyup="submitLock()"></textarea>
                                            </div> --}}
                                            <button type="submit" class="btn btn-success float-left">SUBMIT</button>
                                        </form>
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
{{-- <script src="../cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> --}}
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

  if (cur_url.indexOf("contact  ") >= 0) {
      $( '.navbar-nav' ).find( 'a.active' ).removeClass( 'active' );
      $('#contact').addClass( 'active' );
  }


});

//sweet alert

    function submitLock() {
var textarea = $("#inputMessage").val();
if (textarea != "" || textarea != null){
    $("#submission").removeAttr("disabled");
}
}


    function showAlert() {

        Swal.fire({
            title: 'Thank you!',
            text: 'Our support will contact with you soon',
            imageUrl: 'https://promote-up.com/logo/logo.png',
            imageWidth: 800,
            imageHeight: 200,
            imageAlt: 'Custom image',
        })

    }
    </script>
@endsection
