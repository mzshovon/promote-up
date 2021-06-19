@extends('admin.layouts.app')

@section('styles')

@endsection
@section('content')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Boosting</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Boosting</span>
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
            <div class="row">
                <div class="col-md-2" id="filterSection">
                    <a href="{{url('/admin/boosting/xls')}}" class="btn btn-warning">Export Excel</a>
                </div>

                <div class="col-md-10">
                    <input type="datetime-local" id="from_date" name="from_date">
                    <input type="datetime-local" id="to_date" name="to_date">
                    <button type="button" id="filter" onclick="doFilter()" class="btn btn-info btn-sm">Filter</button>
                </div>


            </div>

            <div class="m-portlet">
                <div class="m-portlet__body">
                    <div class="d-flex mb-2">
                        <div class="mr-auto">

                        </div>
                    </div>

                    <div id="refresh">
                        @include('admin.boosting.render-boosting')
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
        $.ajaxSetup({headers: {'csrftoken': '{{ csrf_token() }}'}});

        function deleteFunction(id) {
            console.log(id);
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
                        url: "{{URL::to('admin/boosting/delete/')}}",
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
                        'Selected Ad has been deleted.',
                        'success'
                    )
                }
            })
        }

        function changeStatus(id) {
            let get_id = id.replace(/\D/g, '');
            $('#test-' + get_id).html(' <div class="form-group m-form__group row" >' +
                '<div class="col-xl-9 col-lg-9">' +
                '<select name="payment_status" id="payment_status" class="plxSelect2 form-control" required>' +
                '<option value="">--Change--</option>' +
                '<option value="due">due</option>' +
                '<option value="paid">paid</option>' +
                '</select></div></div>' +
                '<button class="btn btn-info btn-sm" id="' + get_id + '" onclick="statusSubmit(this.id)">Submit</button>'
            );

            console.log('test-' + get_id);
        }

        function statusSubmit(id) {
            var opt = $('#payment_status').find(":selected").text();
            console.log(opt)
            $.ajax({
                url: "{{URL::to('admin/boosting/paymentStatusChange/')}}",
                method: "POST",
                data: {'id': id, 'status': opt, _token: '{{csrf_token()}}', 'page': '{{app('request')->page}}'},
                dataType: "json",
                success: function (data) {
                    $('#refresh').html('');
                    $('#refresh').html(data);
                }
            });
        }

        function doFilter() {
            var from_date = $('#from_date').val();
            var to_date = $('#to_date').val();
            console.log(from_date + '-' + to_date)
            $.ajax({
                url: "{{URL::to('admin/boosting/filter/')}}",
                method: "POST",
                data: {
                    'from_date': from_date,
                    'to_date': to_date,
                    _token: '{{csrf_token()}}',
                    'page': '{{app('request')->page}}'
                },
                dataType: "json",
                success: function (data) {
                    $('#refresh').html('');
                    $('#refresh').html(data);
                    $('#filterSection').html('<button class="btn btn-warning" onclick="excelFormat()">Export Excel</button>');

                }
            });
        }


        function excelFormat() {
            $('table').tblToExcel();
        }
    </script>

@endsection


@section('scripts')

@endsection
