@extends('promote.app')
@section('content')


<div class="bgimg-contact">
	<div class="container">
		<div class="row">
			<div class="col-md-6 slide-caption">
				<h1 class="font-weight-bold">Contact</h1>
			</div>
		</div>
	</div>
</div>


@if(Session::has('success'))
{{--    <div>--}}
{{--        <strong>Success!</strong> {{ Session::get('message', '') }}--}}
{{--    </div>--}}

    <script>
        Swal.fire({
            title: 'Thank you for your info!',
            text: "{{ Session::get('message', '') }}",
            imageUrl: 'https://promote-up.com/logo/logo.png',
            imageWidth: 500,
            imageHeight: 100,
            imageAlt: 'Custom image',
        })

    </script>

@endif

@if(auth()->user()){



<div class="container-fluid bg-white py-5">
	<div class="row">
		<div class="container">
			<div class="row">

				<div class="offset-md-2 col-md-8 col-8 my-auto">
                    <h4>Please fill up the below criteria for further transaction</h4>



					<form class="pt-3" method="post" action="{{url('/input_user_order')}}">
                        @csrf
						<div class="form-group">
							<input type="text" class="form-control" id="inputName" placeholder="Your Name" name="name" readonly value="{{auth()->user()->name}}" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="inputEmail" placeholder="Your E-mail" name="email" readonly value="{{auth()->user()->email}}" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="inputSubject" placeholder="Your mobile number" name="mobile" readonly value="{{auth()->user()->phone}}" required>
                        </div>
                        <div class="form-group">
						    <textarea class="form-control" id="inputMessage" rows="4" placeholder="Your address" name="address" readonly required> {{auth()->user()->address}} </textarea>
                          </div>
                          <div class="form-group">
							<input type="text" class="form-control" id="inputSubject" placeholder="whats your business? ex. online botique" name="business" required>
                        </div>
                        <div class="form-group">
                            <label>Which service you want from us?</label>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="boosting" name="services[]">Bosoting</label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="content" name="services[]">Content making</label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="web" name="services[]">Website service</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="graphic" name="services[]">Graphics and logo design</label>
                            </div>
                            <div class="col-sm-4">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="animation" name="services[]">Short animation</label>
                            </div>

                        </div>

                        <hr>
                        <div class="form-group">
                            <input type="number" class="form-control" id="payment_amount" placeholder="payment amount. we don't boost lower than 10$ USD" onkeyup="checkPayment()" onchange="checkPayment()" name="payment_amount" required>
                        <span style="color: red" id="warning" hidden>Sorry we won't boost less than 10$ USD</span>
                        </div>
						<div class="form-group">
						    <textarea class="form-control" id="inputMessage" rows="4" placeholder="Leave your messasge here..." name="message"></textarea>
  						</div>
                        <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
						<input type="submit" id="submission"  name="submit" class="btn btn-success float-left"  value="SUBMIT" />
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
}
    @else
<div class="container-fluid bg-white py-5">
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="offset-md-2 col-md-8 col-8 my-auto">
                    <a href="{{url('/login')}}" style="text-align: center;color: #60B0F4;font-weight: bold;font-size: 20px"> If you aren't logged in as user please login to our site</a>
                    <form class="pt-3" method="post" action="{{url('/input_guest_contact')}}">
                        @csrf
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputName" placeholder="Your Name" name="name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" id="inputEmail" placeholder="Your E-mail" name="email" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputSubject" placeholder="Your mobile number" name="mobile" required>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" id="inputMessage" rows="4" placeholder="Your address" name="address" required></textarea>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputSubject" placeholder="whats your business? ex. online botique" name="business" required>
                        </div>
                        <hr>
                        <div class="form-group">
                            <label>Which service you want from us?</label>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="boosting" name="services[]">Bosoting</label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="content" name="services[]">Content making</label>
                                </div>
                                <div class="col-sm-4">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" value="web" name="services[]">Website service</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="graphic" name="services[]">Graphics and logo design</label>
                            </div>
                            <div class="col-sm-4">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="animation" name="services[]">Short animation</label>
                            </div>

                        </div>

<hr>

                        <div class="form-group">

                            <input type="number" class="form-control" id="payment_amount" placeholder="payment amount. we don't boost lower than 10$ USD" onkeyup="checkPayment()" onchange="checkPayment()" name="payment_amount" required>
                            <span style="color: red" id="warning" hidden>Sorry we won't boost less than 10$ USD</span>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" id="inputMessage" rows="4" placeholder="Leave your messasge here..." name="message"></textarea>
                        </div>
                        <input type="hidden" name="user_id" value="0">
                        <input type="submit" id="submission"  name="submit" class="btn btn-success float-left"  value="SUBMIT" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



    @endif









<div class="container-fluid bg-light py-5">
	<div class="row">
		<div class="container">
			<div class="row">
				<div class="offset-md-1 col-md-4 col-sm-10 my-auto">
					<p class="font-weight-bold">Or Reach us at</p>
					<a style="color: #f37a20;" href="mailto:contact@dingi.live" target="_blank" >promote-up@gmail.com</a>
					<br>

                    <p><span>Call Us: </span>+8801771041123
					<!-- <br>Floor 4, Wakil Tower, Ta 131
					<br>Gulshan Badda Link Road
					<br>Dhaka 1212
					<br>Bangladesh</p> -->
				</div>
				<!-- <div class="col-md-7 col-sm-10 my-auto ">
					<div id='map' style='width: 100%; height: 50vh; border-radius: 6px'></div>
				</div> -->
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

  if (cur_url.indexOf("contact") >= 0) {
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


    function checkPayment() {
var payment = $('#payment_amount').val();
if(payment < 10){
    $('#warning').attr('hidden',false);
    $('#submission').attr('disabled',true);
}
else{
    $('#warning').attr('hidden',true);
    $('#submission').attr('disabled',false);
}


    }
    </script>
@endsection
