@extends('admin.layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">User Details</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">User Details</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                </div>
            </div>
        </div>
        <!-- END: Subheader -->

        <div class="m-content">
            <div class="m-portlet">
                <div class="m-portlet__body">
                    <div class="row">
                        <div class="col-md-8 post-details">
                            <div class="row">
                                <div class="col-md-8">
                                    <table class="table table-striped">
                                        <tr>
                                            <td width="150">Name</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@ $user->name}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Email</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$user->email}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Phone</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$user->phone}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">City</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$user->city}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Post Code</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$user->zip_code}}</td>
                                        </tr>
                                        <tr>
                                            <td width="150">Joined Date</td>
                                            <td width="20" class="text-center">:</td>
                                            <td>{{@$user->created_at}}</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        @php

                        $get_order_list = \Illuminate\Support\Facades\DB::table('guest_details')->where('user_id','=',@$user->id)->get();


                        @endphp


                        <div class="col-md-12 mt-3">
                            <h5>ORDER LIST</h5>
                            <table class="table table-striped contentMiddle">
                                <thead>
                                <tr>
                                    <th width="3%">#</th>
                                    <th>Order ID</th>
                                    <th>Total Amounts</th>
                                    <th>Status</th>
                                    <th>Payment status</th>
                                    <th>Order Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $row_count = 1;?>
                                @forelse($get_order_list as $order)
                                    <tr>
                                        <td>{{$row_count++}}</td>
                                        <td>{{'promote_up-'.@$order->id}}</td>
                                        <td>{{@$order->payment_amount}}</td>
                                        <td>
                                            <?php
                                            if(@$order->status == 0)
                                                echo "Pending";
                                            elseif(@$order->status == 1)
                                            echo "Complete";
                                            elseif(@$order->status == 2)
                                            echo "Cancel";
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            if(@$order->payment == 0)
                                                echo "Payment Due";
                                            elseif(@$order->payment == 1)
                                                echo "Payment Complete";
                                            elseif(@$order->status == 2)
                                                echo "Cancel";
                                            ?></td>
                                        <td>{{@$order->created_at}}</td>

                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="9" style="text-align: center"><h6>No Order Available</h6></td>
                                    </tr>
                                @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(function () {
            'use strict';
            $(document).on('click', '.meta-links', function (e) {
                e.preventDefault();
                let self = $(this);
                let target = self.attr('href');
                $('.interaction-list').removeClass('active');
                $(target).addClass('active');
                $('.meta-links').removeClass('active');
                self.addClass('active');
            })
        })
    </script>
@endsection
