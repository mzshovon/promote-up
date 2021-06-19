<div class="table-responsive">
    <table class="table table-striped contentMiddle" id="filteredTable">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Page name</th>
            <th>Boosting dollar</th>
            <th>Boosting taka</th>
            <th>Total paid(taka)</th>
            <th>Profit</th>
            <th>Owner</th>
            <th>Payment Status</th>
            <th>Boosting created</th>
            <th width="1%" class="text-center no-wrap">Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php $row_count = ($boosting->currentpage() - 1) * $boosting->perpage() + 1;?>
        @forelse($boosting as $boostings)
            <tr>
                <td>{{$row_count++}}</td>
                <td>{{@$boostings->page_name}}</td>
                <td>{{@$boostings->dollar_cost}}</td>
                <td>{{@$boostings->taka_cost}}</td>
                <td>{{@$boostings->payment}}</td>
                <td>{{@(int)$boostings->payment-(int)$boostings->taka_cost}}</td>
                <td>{{@$boostings->payment_owner}}</td>
                <td id="test-{{@$boostings->id}}" ondblclick="changeStatus(this.id)">{{strtoupper(@$boostings->payment_status)}}</td>
                <td>{{date('d-M-Y',strtotime($boostings->created_at))}}</td>
                <td class="text-center no-wrap">
                    <a href="{{url('admin/boosting/edit/'.@$boostings->id)}}" class="btn btn-xs btn-outline-info"><i
                            class="la la-edit"></i> Edit</a>
                    <a href="javascript:" class="btn btn-xs btn-outline-danger user-delete" id="{{@$boostings->id}}"
                       onclick="deleteFunction(this.id)"><i class="la la-trash-o"></i> Delete</a>
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="9" style="text-align: center"><h6>No Boosting Available</h6></td>
            </tr>
        @endforelse
        </tbody>

        <tfoot>
        <tr>
            <td> </td>
            <td> </td>
            <td>Total dollar </td>
            <td>Total taka</td>
            <td>Total taka(paid) </td>
            <td>Total profit </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td> </td>
            <td> </td>
            <td style="background: #2479b5;color: white">{{@$dollar}} $</td>
            <td style="background: #2479b5;color: white">৳ {{@$taka}}</td>
            <td style="background: #2479b5;color: white">৳ {{@$paid}} </td>
            <td style="background: #2479b5;color: white">৳ {{(int)@$paid-(int)@$taka}} </td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>

        </tr>
        </tfoot>
    </table>
</div>

{{--<div class="mt-3">--}}
{{--    <div class="d-flex">--}}
{{--        <div class="mr-auto"></div>--}}
{{--        {{ $boosting->render( "pagination::bootstrap-4") }}--}}
{{--    </div>--}}
{{--</div>--}}
