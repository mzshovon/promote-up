@extends('promote.app')
@section('content')

<div class="bgimg-login">
	<div class="container">
		<div class="row">
			<div class="col-md-6 slide-caption">
				<h1 class="font-weight-bold">Login</h1>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid bg-white py-5">



	<div class="row">
		<div class="container">
            <h1 style="text-align: center">REGISTER</h1>
			<div class="row">
				<div class="offset-md-3 col-md-6 col-6 my-auto">
					<form class="pt-3" method="post" action="{{ route('register') }}">
                        @csrf
						<div class="form-group">
							<input type="text" class="form-control" id="inputName" placeholder="Your Name" name="name" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="inputEmail" placeholder="Your E-mail" name="email" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" id="inputSubject" placeholder="Your mobile number" name="phone" required>
                        </div>
                        <div class="form-group">
						    <textarea class="form-control" id="inputMessage" rows="4" placeholder="Your address" name="address" required ></textarea>
                          </div>
                          <div class="form-group">
							<input type="password" class="form-control" id="inputSubject" placeholder="password" minlength="8" name="password" required>
                        </div>
                        <div class="form-group">
							<input type="password" class="form-control" id="inputSubject" placeholder="confirm your password" minlength="8" name="password_confirmation" required>
                        </div>
                          {{-- <div class="form-group">
							<input type="text" class="form-control" id="inputSubject" placeholder="Subject like digital marketing, custom graphics, short animation or web developement" name="subject" required>
                        </div>
						<div class="form-group">
						    <textarea class="form-control" id="inputMessage" rows="8" placeholder="What you want to say" name="message" required onkeyup="submitLock()"></textarea>
  						</div> --}}
						<input type="submit" id="submission"  name="submit" class="btn btn-success float-left"  value="SUBMIT" />
					</form>
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
