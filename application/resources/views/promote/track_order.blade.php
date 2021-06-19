@extends('promote.app')
@section('content')

    <div class="bgimg-track mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 slide-caption">
                    <!-- <h1 class="font-weight-bold text-white">About</h1> -->
                </div>
            </div>
        </div>
    </div>





    <div class="container-fluid bg-white">
        <div class="row">
            <div class="container">
                <div class="container-fluid py-7">
                    <div class="row">
                        <div class="container" style="font-size: 15px">
                            <hr>
                            <h1 style="text-align: center; font-weight: bold;    color: #60B0F4">Track your promotion status</h1>
                            <hr>
                            <div class="row text-center">
                                <div class="offset-1 col-10 my-auto">
                                    <div class="table-responsive">
                                        <table class="table table-striped contentMiddle">
                                            <thead>
                                            <tr>
                                                <th width="3%">#</th>
                                                <th>Order ID</th>
                                                <th>Suggested cost</th>
                                                <th>Order status</th>
                                                <th>Payment status</th>
                                                <th>Boosting progress</th>
                                                <th>Order placed date</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <?php $row_count = ($orders->currentpage() - 1) * $orders->perpage() + 1;?>
                                            @forelse($orders as $order)
                                                <tr>
                                                    <td>{{$row_count++}}</td>
                                                    <td>promote-{{@$order->id}}</td>
                                                    <td>{{@$order->payment_amount}}</td>
                                                    <td>

                                                        @if(@$order->status==0)
                                                            Pending for admin lookup
                                                            @elseif(@$order->status==1)
                                                                Seen by admin

                                                                @elseif(@$order->status==2)
                                                                    Accepted by admin

                                                                    @else
                                                            Order cacncelled

                                                            @endif
                                                    </td>
                                                    <td>
                                                        @if(@$order->payment==0)
                                                            Due

                                                            @else
                                                        Complete

                                                            @endif

                                                        </td>
                                                    <td>
                                                        <div class="progress">
                                                            <div class="progress-bar" role="progressbar" style="width:{{@$order->boosting_level}}%;" aria-valuenow="{{@$order->boosting_level}}" aria-valuemin="0" aria-valuemax="100">{{@$order->boosting_level}}%</div>
                                                        </div>
                                                    </td>
                                                    <td>{{date('d.M.Y',strtotime($order->created_at))}}</td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="9" style="text-align: center"><h6>No Orders Available</h6></td>
                                                </tr>
                                            @endforelse
                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="mt-3">
                                        <div class="d-flex">
                                            <div class="mr-auto"></div>
                                            {{ $orders->render( "pagination::bootstrap-4") }}
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
