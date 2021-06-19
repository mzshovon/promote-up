<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-transparent fixed-top">
        <div class="container">
            <a class="navbar-brand" href="{{url('/')}}">
                <img src="{{asset('/')}}assets/promote/assets/images/promote-removebg-preview.png" width="260" height="70" alt="Promote-Up logo" title="Promote-Up Homepage">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-navigation-menu"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <!-- <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Products
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                      </div>
                    </li> -->
                    <!--           <li class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  Products
                                </a>
                                <div class="dropdown-menu dropdown-multicol2 dropdown-cart" aria-labelledby="dropdownMenuButton">
                                  <div class="dropdown-col">
                                    <a class="dropdown-item" href="#">
                                      <img src="assets/images/feature-icon/search.png" class="h-25 w-25" alt="" />
                                      <span class="item-info">
                                          <span>Item name</span>
                                          <span>23$</span>
                                      </span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                      <img src="assets/images/feature-icon/traffic.png" class="h-25 w-25" alt="" />
                                      <span class="item-info">
                                          <span>Item name</span>
                                          <span>23$</span>
                                      </span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                      <img src="assets/images/feature-icon/city.png" class="h-25 w-25" alt="" />
                                      <span class="item-info">
                                          <span>Item name</span>
                                          <span>23$</span>
                                      </span>
                                    </a>
                                  </div>
                                  <div class="dropdown-col">
                                    <a class="dropdown-item"></a>
                                    <a class="dropdown-item" href="#">
                                      <img src="assets/images/feature-icon/flag.png" class="h-25 w-25" alt="" />
                                      <span class="item-info">
                                          <span>Item name</span>
                                          <span>23$</span>
                                      </span>
                                    </a>
                                    <a class="dropdown-item" href="#">
                                      <img src="assets/images/feature-icon/address.png" class="h-25 w-25" alt="" />
                                      <span class="item-info">
                                          <span>Item name</span>
                                          <span>23$</span>
                                      </span>
                                    </a>
                                  </div>
                                </div>
                              </li> -->
                    <li class="nav-item">
                        <a class="nav-link active" href="{{url('/')}}" id="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/about')}}" id="about">About Us<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/portfolio')}}" id="portfolio">Portfolio<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/services')}}" id="service">Our Services</a>
                    </li>

                    <!--<li class="nav-item dropdown">-->
                    <!--    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Services <b class="caret"></b></a>-->
                    <!--    <ul class="dropdown-menu multi-column columns-2">-->
                    <!--      <div class="row">-->
                    <!--        <div class="card col-12 col-md-6">-->
                    <!--          <a href="#" class="row m-2 p-2">-->
                    <!--            <div class="col-3 p-0 h-auto text-left">-->
                    <!--                <img src="assets/images/icons/facebook.png" class="img-fluid w-75" alt="">-->
                    <!--            </div>-->
                    <!--            <div class="col-9 my-auto px-1">-->
                    <!--                <div class="card-block">-->
                    <!--                    <h6 class="card-title font-weight-bold m-0">Facebook marketing</h6>-->
                    <!--                    <p class="card-text text-muted m-0">Best F-Commerce support from us.</p>-->
                    <!--                </div>-->
                    <!--            </div>            -->
                    <!--          </a>-->

                    <!--        </div>-->

                    <!--      </div>-->
                    <!--    </ul>-->
                    <!--</li>-->
                    <!--           <li class="nav-item dropdown">
                              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> <span class="glyphicon glyphicon-shopping-cart"></span>Products<span class="caret"></span></a>
                              <ul class="dropdown-menu dropdown-cart" role="menu">
                                  <li>
                                      <span class="item">
                                        <span class="item-left">
                                            <img src="assets/images/feature-icon/search.png" class="h-25 w-25" alt="" />
                                            <span class="item-info">
                                                <span>Item name</span>
                                                <span>23$</span>
                                            </span>
                                        </span>
                                    </span>
                                  </li>
                                  <li>
                                      <span class="item">
                                        <span class="item-left">
                                            <img src="assets/images/feature-icon/address.png" class="h-25 w-25" alt="" />
                                            <span class="item-info">
                                                <span>Item name</span>
                                                <span>23$</span>
                                            </span>
                                        </span>
                                    </span>
                                  </li>
                                  <li>
                                      <span class="item">
                                        <span class="item-left">
                                            <img src="assets/images/feature-icon/flag.png" class="h-25 w-25" alt="" />
                                            <span class="item-info">
                                                <span>Item name</span>
                                                <span>23$</span>
                                            </span>
                                        </span>
                                    </span>
                                  </li>
                                  <li>
                                      <span class="item">
                                        <span class="item-left">
                                            <img src="assets/images/feature-icon/city.png" class="h-25 w-25" alt="" />
                                            <span class="item-info">
                                                <span>Item name</span>
                                                <span>23$</span>
                                            </span>
                                        </span>
                                    </span>
                                  </li>
                              </ul>
                            </li> -->

                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/clients')}}" id="clients" >Clients</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/contact')}}" id="contact">Contact us</a>
                    </li>
                    <li class="nav-item">


                        @guest
                            <div class="header__actions">
                                <a class="btn btn-info" href="{{url('/login')}}">Login</a>
                            </div>
                        @else
                            <div class="dropdown">
                                <a class="nav-link dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    {{ Auth::user()->name }}
                                </a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="{{url('/track_order/'.auth()->user()->email)}}">
                                        {{ __('Track your order') }}
                                    </a>
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </div>

                        @endguest

                    </li>
                    <!--<li class="nav-item">-->
                    <!--  <a class="nav-link" href="contact.php" id="blog">Blog</a>-->
                    <!--</li>   -->
                    <!-- <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Help
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                      </div>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Careers</a>
                    </li> -->
                </ul>
                <!-- <div class="dropdown">
                  <button type="button" class="btn btn-outline-dark btn-sm border-0"" data-toggle="dropdown">
                    EN <i class="icon-action-language pl-2"></i>
                  </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">BN</a>
                  </div>
                </div>
                <input type="search" id="search" placeholder=" Search" name="search"> -->
                <!--a href="#"><i class="icon-action-language mx-2 text-dark"></i></a-->
                <!-- <button type="button" class="btn btn-success mx-2">SIGN IN</button> -->
            </div>
        </div>
    </nav>
</header>
