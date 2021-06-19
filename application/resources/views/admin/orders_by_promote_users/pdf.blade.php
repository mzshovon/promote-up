
<style>

    tbody, thead{
        font-size: 15px;
    }

</style>

<div class="table-responsive">
    <table class="table table-striped contentMiddle">
        <thead>
        <tr>
            <th width="3%">#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile No</th>
            <th>Ordered at</th>
            <th>Status</th>
            <th>Amount of boosting</th>
        </tr>
        </thead>
        <tbody>
        <?php $row_count = 1;?>
        @forelse($order_users as $users)
            <tr>
                <td>{{$row_count++}}</td>
                <td>{{@$users->name}}</td>
                <td>{{@$users->email}}</td>
                <td>{{@$users->mobile}}</td>
                <td>{{date('d M.Y',strtotime($users->created_at))}}</td>

                <td>
                            @if(@$users->status == '0')
                                pending

                            @elseif(@$users->status == '1')
                                seen by admin
                            @elseif(@$users->status == '2')
                                order in progress

                            @elseif(@$users->status == '3')
                            cancelled
                                @endif
                </td>
                <td>{{@$users->payment_amount}}</td>
            </tr>
        @empty
            <tr>
                <td colspan="9" style="text-align: center"><h6>No Orders Available</h6></td>
            </tr>
        @endforelse
        </tbody>
    </table>
    <hr>
<div style="float: right"><span>Total amount: {{@$total_amount}}</span></div>
</div>

