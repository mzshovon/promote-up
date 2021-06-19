<?php

namespace App\Http\Controllers\Admin;

use App\Boosting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;

class BoostingController extends Controller
{
    public $pagination = 200;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function BoostingIndex()
    {
        $data = array();
        $data['pageTitle'] = 'Boosting | Admin';
        $data['boosting'] = 'm-menu__item--open m-menu__item--expanded';
        $data['boosting_list'] = 'm-menu__item--active';
        $data['boosting'] = DB::table('boostings')->paginate($this->pagination);
        $data['dollar'] = DB::table('boostings')->sum('dollar_cost');
        $data['taka'] = DB::table('boostings')->sum('taka_cost');
        $data['paid'] = DB::table('boostings')->sum('payment');

        return view('admin.boosting.boosting')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function BoostingAdd()
    {
        $data = array();
        $data['pageTitle'] = 'Add New Boosting'; // please use frontend name
        $data['boosting'] = 'm-menu__item--open m-menu__item--expanded';
        $data['boosting_list_add'] = 'm-menu__item--active';
//        $data['products_list'] = Product::latest()->get();
        return view('admin.boosting.add')->with($data);
    }

    public function BoostingStore(Request $request)
    {

        $boosting = new Boosting();
        $boosting->page_name = $request->page_name;
        $boosting->dollar_cost = $request->dollar_cost;
        $boosting->taka_cost = $request->taka_cost;
        $boosting->payment = $request->payment;
        $boosting->payment_owner = $request->payment_owner;
        $boosting->payment_status = $request->payment_status;

        $boosting->save();
        return redirect('admin/boosting/')->with('message', 'boosting created Successfully');
    }

    public function BoostingEdit($id)
    {
        $data = array();
        $data['boosting'] = Boosting::find($id);

        if ($data['boosting'] == null) {
            return back();
        } else {
            $data['pageTitle'] = 'Boosting Ad Update - ' . $data['boosting']->title; // please use frontend name
            $data['boostings'] = 'm-menu__item--open m-menu__item--expanded';
            $data['boosting_lists'] = 'm-menu__item--active';
//            $data['products_list'] = Product::latest()->get();
            return view('admin.boosting.edit')->with($data);
        }
    }

    public function BoostingUpdate(Request $request)
    {
        $id = $request->id;

        $boosting = Boosting::find($id);
        $boosting->page_name = $request->page_name;
        $boosting->dollar_cost = $request->dollar_cost;
        $boosting->taka_cost = $request->taka_cost;
        $boosting->payment = $request->payment;
        $boosting->payment_owner = $request->payment_owner;
        $boosting->payment_staus = $request->payment_staus;
        $boosting->save();
        return redirect('admin/boosting/')->with('message', 'Selected Boosting Update successfully.');
    }

    public function BoostingDelete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $boosting = Boosting::find($id);
            $boosting->delete();
            $data['boosting'] = DB::table('boostings')->latest()->paginate($this->pagination)->setPath(url('admin/boosting') . "?page=$request->page");
            return Response::json(View::make('admin.boosting.render-boosting', $data)->render());
        }
    }

    public function paymentStatusChange(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $boosting = Boosting::find($id);
            $boosting->payment_status = $request->status;
            $boosting->save();
            $data['boosting'] = DB::table('boostings')->latest()->paginate($this->pagination)->setPath(url('admin/boosting') . "?page=$request->page");
            return Response::json(View::make('admin.boosting.render-boosting', $data)->render());
        }
    }


    public function filter(Request $request)
    {
        if ($request->ajax()) {
            $from_date = $request->from_date;
            $to_date = $request->to_date;
            $data['boosting'] = DB::table('boostings')->where('created_at','>=',$from_date)->where('created_at','<=',$to_date)->get();
            $data['dollar'] = DB::table('boostings')->where('created_at','>=',$from_date)->where('created_at','<=',$to_date)->sum('dollar_cost');
            $data['taka'] = DB::table('boostings')->where('created_at','>=',$from_date)->where('created_at','<=',$to_date)->sum('taka_cost');
            $data['paid'] = DB::table('boostings')->where('created_at','>=',$from_date)->where('created_at','<=',$to_date)->sum('payment');
            return Response::json(View::make('admin.boosting.filter', $data)->render());
        }
    }

    public function chart()
    {

            $data['boosting'] = DB::table('boostings')->select('payment')->latest()->get();
            $coll = collect($data['boosting']);
            return $coll;

    }

    public function xls()
    {
        return \Excel::download(new xlsConverterBoostingController(), 'boosting_orders'.now().'.xlsx');
    }
}
