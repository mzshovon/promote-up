@extends('admin.layouts.app')
@section('styles')
@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">
        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Edit Orders</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Edit Orders</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    {{----}}
                </div>
            </div>
        </div>
        <!-- END: Subheader -->

        <div class="m-content">
            <!--begin::Portlet-->
            <form class="m-portlet m-portlet--last m-portlet--head m-portlet--responsive-mobile"
                  method="POST" action="{{url('admin/orders_by_user/edit')}}" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="m-form m-form--label-align-left- m-form--state-" id="m_form">
                    <!--begin: Form Body -->
                    <div class="m-portlet__body">
                        <div class="row">
                            <div class="col-xl-8 offset-xl-2">
                                <div class="m-form__section m-form__section--first">
                                    <div class="row">
                                        <label class="col-xl-3 col-lg-3 col-form-label">&nbsp;</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <div class="m-form__heading mb-0">
                                                <h3 class="m-form__heading-title mb-0">Orders Details</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="id" value="{{ @$order_users->id}}">
                                    <div class="form-group m-form__group row" {{ $errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="name" readonly value="{{old('name', @$order_users->name)}}" class="form-control m-input" placeholder="" required>
                                        </div>
                                    </div>


                                    <div class="form-group m-form__group row" {{ $errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Email: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="email" readonly value="{{old('name', @$order_users->email)}}" class="form-control m-input" placeholder="" required>
                                        </div>
                                    </div>


                                    <div class="form-group m-form__group row" {{ $errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Mobile: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="mobile" value="{{old('name', @$order_users->mobile)}}" class="form-control m-input" placeholder="" required>
                                        </div>
                                    </div>


                                    <div class="form-group m-form__group row" {{ $errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Business: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="business" readonly value="{{old('name', @$order_users->business)}}" class="form-control m-input" placeholder="" required>
                                        </div>
                                    </div>


                                    <div class="form-group m-form__group row" {{ $errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Payment Amount: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="payment_amount" value="{{old('name', @$order_users->payment_amount)}}" class="form-control m-input" placeholder="" required>
                                        </div>
                                    </div>





                                    <div class="form-group m-form__group row" {{@$errors->has('sub_font') ? 'has-error' : ''}}>
                                        <label for="brand_id" class="col-xl-3 col-lg-3 col-form-label text-right">Payment <status></status>: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="hidden" id="promote_id" value="{{@$order_users->id}}">
                                            <select name="payment_status" id="sub_id" class="plxSelect2 form-control" required>

                                                <option value="0" {{(old ('sub_font', @$order_users->payment) == '0') ? 'selected' : ''}} >{{'Due'}}</option>
                                                <option value="1" {{(old ('sub_font', @$order_users->payment) == '1') ? 'selected' : ''}} >{{'Complete'}}</option>

                                            </select>
                                        </div>
                                    </div>


                                    <div class="form-group m-form__group row" {{ $errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Boosting update (%): <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="number" name="boosting_level" value="{{old('name', @$order_users->boosting_level)}}" class="form-control m-input" placeholder="" required>
                                        </div>
                                    </div>



                                    <div class="form-group m-form__group row">
                                        <label for="description" class="col-xl-3 col-lg-3 col-form-label text-right">
                                            Address:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="address" id="long_description" class="form-control"
                                                      rows="3">{{old('long_description',@$order_users->address) }}</textarea>
                                        </div>
                                    </div>



                                    <div class="form-group m-form__group row">
                                        <label for="description" class="col-xl-3 col-lg-3 col-form-label text-right">
                                            Message:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="message" id="long_description" class="form-control"
                                                      rows="3">{{old('long_description',@$order_users->message) }}</textarea>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="m-portlet__foot m-portlet__foot--fit">
                        <div class="col-xl-8 offset-xl-2">
                            <div class="m-form__actions m-form__actions">
                                <div class="row">
                                    <div class="col-lg-9 ml-lg-auto">
                                        <button type="submit" class="btn btn-brand"><i class="la la-save"></i> &nbsp; Update</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!--end::Portlet-->
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(function () {
            'use strict';
            $('.plx_datepicker').datepicker();
        });
        $('.plxSelect2').select2({
            placeholder: "--Select--"
        });

    </script>
@endsection
