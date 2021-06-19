@extends('promote.app')
@section('content')

<div class="bgimg-about mt-5">
	<div class="container">
		<div class="row">
			<div class="col-md-6 slide-caption">
				<!-- <h1 class="font-weight-bold text-white">About</h1> -->
			</div>      
		</div>
	</div>
</div>

<div class="container my-4">
	<div class="row">
		<div class="offset-md-1 col-md-10 p-4">
			<h5 class="text-center">Promote-Up is a full-service innovative and advertising agency. We take your business to the exact and authentic audience where you desire it to be. We plan, co-ordinate and initiate mind blowing business models with perfect strategies, designs and contents to ensure your business branding.
Our company culture is furnished with expert creative human resource. With the power of our technical and the skillful manpower and through the help of efficient data, content and technology we make sure services at best quality. Our main focus is on taking your brand to your desired goal.
</h5>
		</div>      
	</div>
</div>

<div class="container-fluid bg-light py-4">
	<div class="row"> 
		<div class="container">
			<div class="row text-center">
				<div class="col-12 mb-4">
					<h4 class="font-weight-bold mt-4">The Team</h4>
					
					<div class="card-deck">
						<div class="card">
							<img class="card-img-top border" src="{{asset('/')}}assets/promote/assets/images/about/vabi.jpeg" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title mb-0">Sumaia Akhter</h5>
								 <p class="card-text"><small class="text-muted">CEO and Co-Founder</small></p>

							</div>
						</div>
						<div class="card">
							<img class="card-img-top border" src="{{asset('/')}}assets/promote/assets/images/about/sakib.jpeg" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title mb-0">Sakib Rifat</h5>
								 <p class="card-text"><small class="text-muted">Director of Marketing and Development</small></p>

							</div>
						</div>
						<div class="card">
							<img class="card-img-top border" src="{{asset('/')}}assets/promote/assets/images/about/shovon.jpeg" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title mb-0">Md. Moniruzzaman</h5>
								 <p class="card-text"><small class="text-muted">Chief Technical Advisor</small></p>

							</div>
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
@endsection