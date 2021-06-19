@extends('admin.layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Edit Category</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Edit Category</span>
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
                  method="POST" action="{{url('admin/categories/edit')}}" enctype="multipart/form-data">
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
                                                <h3 class="m-form__heading-title mb-0">Category Details</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('name') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="name" value="{{old('name',@$category->name)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('name', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="description" class="col-xl-3 col-lg-3 col-form-label text-right">Description:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="description" id="description" class="form-control" rows="3">{{old('bio',@$category->description) }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{@$errors->has('department_id') ? 'has-error' : ''}}>
                                        <label for="merchant" class="col-xl-3 col-lg-3 col-form-label text-right">Department: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <select name="department_id" id="department_id" class="plxSelect2 form-control" required>
                                                @forelse($departments_list as $department)
                                                    <option value="{{@$department->id}}" {{(old ('department_id', @$category->department_id) == @$department->id) ? 'selected' : ''}}>{{@$department->name}}</option>
                                                @empty
                                                @endforelse
                                            </select>
                                            {!! $errors->first('department_id', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{@$errors->has('status') ? 'has-error' : ''}}>
                                        <label for="merchant" class="col-xl-3 col-lg-3 col-form-label text-right">Status: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <select name="status" id="status" class="plxSelect2 form-control" required>
                                                <option value="1" {{(old ('status', @$category->status) == 1) ? 'selected' : ''}}>Active</option>
                                                <option value="2" {{(old ('status', @$category->status) == 2) ? 'selected' : ''}}>InActive</option>
                                            </select>
                                            {!! $errors->first('status', '<p class="help-block" style="color: red;">:message</p>') !!}
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
                                        <input type="hidden" name="id" value="{{@$category->id}}">
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