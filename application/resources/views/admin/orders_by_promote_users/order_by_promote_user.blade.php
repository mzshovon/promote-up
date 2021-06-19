@extends('admin.layouts.app')

@section('styles')

@endsection
@section('content')

    @if(Session::has('success'))
        {{--    <div>--}}
        {{--        <strong>Success!</strong> {{ Session::get('message', '') }}--}}
        {{--    </div>--}}

        <script>
            Swal.fire(
                'Congrats',
                'Selected Order updated successfully.',
                'success'
            )

        </script>

    @endif

    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Orders details</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Order details</span>
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
            <a href="{{url('/admin/orders_by_user/pdf')}}" class="btn btn-info">Export PDF</a>
            <a href="{{url('/admin/orders_by_user/xls')}}" class="btn btn-warning">Export Excel</a>

            <div class="m-portlet">
                <div class="m-portlet__body">
                    <div class="d-flex mb-2">
                        <div class="mr-auto">

                        </div>
                    </div>

                    <div id="refresh">
                        @include('admin.orders_by_promote_users.render-orders')
                    </div>
                </div>
            </div>

        </div>
    </div>
    @if (Session::has('message'))
        <script>
            swal('Success!', '{{ Session::get('message') }}', 'success');
        </script>
    @endif
    @if (Session::has('error'))
        <script>
            swal('Oops!', '{{ Session::get('error') }}', 'error');
        </script>
    @endif

    <script type="text/javascript">
        $.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });

        function deleteFunction(id) {

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.value) {
                    console.log(id);
                    $.ajax({
                        url: "{{URL::to('admin/orders_by_user/delete/')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                        dataType: "json",
                        success: function (data) {
                            $('#refresh').html('');
                            $('#refresh').html(data);
                        }
                    });
                    Swal.fire(
                        'Deleted!',
                        'Selected Order has been deleted.',
                        'success'
                    )
                }
            })
        }

        //change status to pending


        //change status by admin

        function getStatus() {
            var getVal = $('#sub_id').find(":selected").val();
            var id = $('#promote_id').val();
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, change it!'
            }).then((result) => {
                if (result.value) {
                    $.ajax({
                        url: "{{URL::to('admin/orders_by_user/changeStatus/')}}",
                        method: "POST",
                        data: {'id': id, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}','status_value':getVal},
                        dataType: "json",
                        success: function (data) {
                            $('#refresh').html('');
                            $('#refresh').html(data);
                        }
                    });
                    Swal.fire(
                        'Status Changed!',
                        'Selected Order status has been Changed.',
                        'success'
                    )
                }
            })


        }



    </script>
@endsection


@section('scripts')

@endsection
