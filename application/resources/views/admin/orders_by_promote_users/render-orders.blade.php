<div class="table-responsive">
    <table class="table table-striped contentMiddle">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile No</th>
            <th>Amount of boosting</th>
            <th>Status</th>
            <th>Ordered at</th>
            <th width="1%" class="text-center no-wrap">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php $row_count = ($order_users->currentpage() - 1) * $order_users->perpage() + 1;?>
        @forelse($order_users as $users)
            <tr>
                <td>{{$row_count++}}</td>
                <td>{{@$users->name}}</td>
                <td>{{@$users->email}}</td>
                <td>{{@$users->mobile}}</td>
                <td>{{@$users->payment_amount}}</td>
                <td>  <div class="form-group m-form__group row" {{@$errors->has('sub_font') ? 'has-error' : ''}}>

                        <div class="col-xl-9 col-lg-9">
                            <input type="hidden" id="promote_id" value="{{@$users->id}}">
                            <select name="sub_font" id="sub_id" class="plxSelect2 form-control" onchange="getStatus()" required>

                                <option value="0" {{(old ('sub_font', @$users->status) == '0') ? 'selected' : ''}} >{{'pending'}}</option>
                                <option value="1" {{(old ('sub_font', @$users->status) == '1') ? 'selected' : ''}} >{{'seen by admin'}}</option>
                                <option value="2" {{(old ('sub_font', @$users->status) == '2') ? 'selected' : ''}}  >{{'order in progress'}}</option>
                                <option value="3" {{(old ('sub_font', @$users->status) == '3') ? 'selected' : ''}} >{{'cancelled'}}</option>

                            </select>
                            {!! $errors->first('banner_id', '<p class="help-block" style="color: red;">:message</p>') !!}
                        </div>
                    </div></td>
                <td>{{date('d M.Y || H:i a',strtotime($users->created_at))}}</td>
                <td class="text-center no-wrap">
                    <a href="{{url('admin/orders_by_user/edit/'.@$users->id)}}" class="btn btn-xs btn-outline-info"><i
                            class="la la-edit"></i> Edit</a>
                    <a href="javascript:" class="btn btn-xs btn-outline-danger user-delete" id="{{@$users->id}}"
                       onclick="deleteFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                </td>
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
        {{ $order_users->render( "pagination::bootstrap-4") }}
    </div>
</div>
