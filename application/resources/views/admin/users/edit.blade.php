@extends('admin.layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Edit User</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Edit User</span>
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
                  method="POST" action="{{url('admin/users/edit')}}" enctype="multipart/form-data">
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
                                                <h3 class="m-form__heading-title mb-0">User Details</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('name') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="name" value="{{old('name',@$user->name)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('name', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('email') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Email: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="email" name="email" value="{{old('email',@$user->email)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('email', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('phone') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Phone: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="phone" value="{{old('phone',@$user->phone)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('phone', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div><div class="form-group m-form__group row" {{ $errors->has('city') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">City: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="city" value="{{old('city',@$user->city)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('city', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div><div class="form-group m-form__group row" {{ $errors->has('zip_code') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Post Code: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="zip_code" value="{{old('zip_code',@$user->zip_code)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('zip_code', '<p class="help-block" style="color: red;">:message</p>') !!}
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
                                        <input type="hidden" name="id" value="{{@$user->id}}">
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
        })
        $('.plxSelect2').select2({
            placeholder: "--Select--"
        })
    </script>
@endsection
