<?php

namespace App\Http\Controllers\Admin;

use App\Boosting;
use Illuminate\Contracts\View\View;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromView;

class xlsConverterBoostingController implements FromView
{
    public function view(): View
    {

        $data = array();
        $data['boosting'] = Boosting::all();
        $data['dollar'] = DB::table('boostings')->sum('dollar_cost');
        $data['taka'] = DB::table('boostings')->sum('taka_cost');
        $data['paid'] = DB::table('boostings')->sum('payment');
        return view('admin.boosting.xls', $data);

    }
}
