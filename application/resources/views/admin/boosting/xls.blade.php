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
        <th>Page Name</th>
        <th>Boosting Dollar</th>
        <th>Boosting Taka</th>
        <th>Total paid</th>
        <th>Profit</th>
        <th>Owner</th>
        <th>Payment Status</th>
        <th>Date</th>
    </tr>
    </thead>
    <tbody>
    <?php $row_count = 1;?>
    @forelse($boosting as $boostings)
        <tr>
            <td>{{$row_count++}}</td>
            <td>{{@$boostings->page_name}}</td>
            <td>{{@$boostings->dollar_cost}}</td>
            <td>{{@$boostings->taka_cost}}</td>
            <td>{{@$boostings->payment}}</td>
            <td>{{@(int)$boostings->payment-(int)$boostings->taka_cost}}</td>
            <td>{{@$boostings->payment_owner}}</td>
            <td>{{strtoupper(@$boostings->payment_status)}}</td>
            <td>{{date('d M.Y',strtotime($boostings->created_at))}}</td>
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
