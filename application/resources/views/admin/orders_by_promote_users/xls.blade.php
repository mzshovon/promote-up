<style>
    table.minimalistBlack {
        border: 3px solid #000000;
        width: 100%;
        text-align: left;
        border-collapse: collapse;
    }
    table.minimalistBlack td, table.minimalistBlack th {
        border: 1px solid #000000;
        padding: 5px 4px;
    }
    table.minimalistBlack tbody td {
        font-size: 13px;
    }
    table.minimalistBlack thead {
        background: #CFCFCF;
        background: -moz-linear-gradient(top, #dbdbdb 0%, #d3d3d3 66%, #CFCFCF 100%);
        background: -webkit-linear-gradient(top, #dbdbdb 0%, #d3d3d3 66%, #CFCFCF 100%);
        background: linear-gradient(to bottom, #dbdbdb 0%, #d3d3d3 66%, #CFCFCF 100%);
        border-bottom: 3px solid #000000;
    }
    table.minimalistBlack thead th {
        font-size: 15px;
        font-weight: bold;
        color: #000000;
        text-align: left;
    }
    table.minimalistBlack tfoot {
        font-size: 14px;
        font-weight: bold;
        color: #000000;
        border-top: 3px solid #000000;
    }
    table.minimalistBlack tfoot td {
        font-size: 14px;
    }
</style>

<table class="minimalistBlack">
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
