<?php

namespace App\Http\Controllers\Admin;

use App\GuestDetails;
use App\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Response;
use Maatwebsite\Excel\Excel;
use Session;
use PDF;
use function foo\func;


class HomeController extends Controller
{
    public function index()
    {
        $data = array();
        $data['pageTitle'] = 'Admin Dashboard';
        $data['dashboard'] = 'm-menu__item--active';
        $data['chart'] = DB::table('boostings')->select('payment')->latest()->get();
//        $coll = collect($data['boosting']);
        return view('admin.dashboard.dashboard')->with($data);
    }

    public function orders_by_users(){

        $data = array();
        $data['pageTitle'] = 'Orders | Admin';
        $data['orders'] = 'm-menu__item--open m-menu__item--expanded';
        $data['orders_list'] = 'm-menu__item--active';

        $data['order_users'] = DB::table('guest_details')->paginate('10');
        return view('admin.orders_by_promote_users.order_by_promote_user')->with($data);

    }


    public function OrdersPromoteEdit($id)
    {
        $data = array();
        $data['order_users'] = GuestDetails::find($id);

        if ($data['order_users'] == null) {
            return back();
        } else {
            $data['pageTitle'] = 'Orders Update - ' . $data['order_users']->title; // please use frontend name
            $data['orders'] = 'm-menu__item--open m-menu__item--expanded';
            $data['orders_list'] = 'm-menu__item--active';
//            $data['products_list'] = Product::latest()->get();
            return view('admin.orders_by_promote_users.edit')->with($data);
        }
    }


    public function OrdersPromoteUpdate(Request $request)
    {
        $id = $request->id;


        $validator = Validator::make($request->all(), [
            'payment_status' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect('admin/orders_by_user/edit')->withErrors($validator)->withInput();
        }


        $orders = GuestDetails::find($id);
        $orders->name = $request->name;
        $orders->email = $request->email;
        $orders->mobile = $request->mobile;
        $orders->business = $request->business;
        $orders->payment_amount = $request->payment_amount;
        $orders->payment = $request->payment_status;
        $orders->boosting_level = $request->boosting_level;
        $orders->address = $request->address;
        $orders->message = $request->message;
        //        dd($banner);
        if($orders->save()){
            return redirect('admin/orders_by_user')->with('success',true)->with('message','Order updated successfully');;
        }
    }


    public function orders_promote_delete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $banner = GuestDetails::find($id);
            $banner->delete();
            $data['order_users'] = DB::table('guest_details')->latest()->paginate('10')->setPath(url('admin/orders_by_user') . "?page=$request->page");
            return Response::json(View::make('admin.orders_by_promote_users.render-orders', $data)->render());
        }
    }


    //status portion starts here

    public function changeStatus(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $status_value = $request->get('status_value');

            $banner = GuestDetails::find($id);
            $banner->status = $status_value;
            $banner->save();

            $data['order_users'] = DB::table('guest_details')->latest()->paginate('10')->setPath(url('admin/orders_by_user') . "?page=$request->page");
            return Response::json(View::make('admin.orders_by_promote_users.render-orders', $data)->render());
        }
    }


    //status portion ends here

    public function pdf()
    {
        $data['order_users'] = DB::table('guest_details')->get();
        $data['total_amount'] = DB::table('guest_details')->sum('payment_amount');
        $pdf = PDF::loadView('admin.orders_by_promote_users.pdf', $data);
        return $pdf->download('order_list.pdf');
    }

    public function xls_export()
    {
     return GuestDetails::all();

    }

    public function xls()
    {
        return \Excel::download(new xlsConverterController(), 'invoices.xlsx');
    }
}
