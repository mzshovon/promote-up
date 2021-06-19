<?php

namespace App\Http\Controllers\Admin;


use App\GuestDetails;
use App\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromView;

class xlsConverterController implements FromView
{
    public function view(): View
    {

        $data = array();
        $data['order_users'] = GuestDetails::all();
        return view('admin.orders_by_promote_users.xls', $data);

    }
}
