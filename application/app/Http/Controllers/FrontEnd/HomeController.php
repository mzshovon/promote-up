<?php

namespace App\Http\Controllers\FrontEnd;

use App\GuestDetails;
use App\MonthlyAd;
use Carbon\Carbon;
use Cart;
use App\Department;
use App\Product;
use App\OrderDetail;
use App\Banner;
use App\Review;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;

class HomeController extends Controller
{
      public $pagination = 20;

    public function __construct()
    {
        $cart_list = Cart::content();
        View::share('cart_list', $cart_list);
    }

    public function index()
    {
//         $data = array();
//         $data['departments'] = Department::with('categories')->latest()->get();
//         $data['banners'] = DB::table('banners')->get();
//         $data['sliders'] = DB::table('sliders')->get();
//         $data['products'] = Product::with('categories', 'brands', 'productimages')->whereStatus(1)->limit(10)->latest()->get();
// //        dd($data['products']);
//         $top_sales = DB::table('order_details')->latest()->get();
// //        dd($top_sales);
// //        exit();
//         $data['top_saling'] = array();
//         foreach ($top_sales as $top_sale) {
//             $data['tops'] = Product::with('categories', 'brands', 'productimages')->whereId($top_sale->product_id)->whereStatus(1)->first();
//             array_push($data['top_saling'], $data['tops']);
//         }
// //        dd($data['top_sales']);
// //        exit();
//         $data['top_sales'] = array_unique($data['top_saling']);

        return view('promote.home');
    }

    public function about(){
        return view('promote.about');
    }

    public function services(){
        return view('promote.services');
    }


    public function clients(){
        return view('promote.clients');
    }


    public function contact(){
        return view('promote.contact');
    }

    public function portfolio(){
        return view('promote.portfolio');
    }

    public function trackDetails($email){
      $track['orders'] = DB::table('guest_details')->where('email',$email)->paginate('10');
      return view('promote.track_order')->with($track);
    }

    public function storeUserOrder(Request $request){
        $service_array = $request->services;

        $guest = new GuestDetails();

        $guest->name = $request->name;
        $guest->email = $request->email;
        $guest->mobile = $request->mobile;
        $guest->address = $request->address;
        $guest->business = $request->business;
        $guest->payment_amount = $request->payment_amount;
        $guest->message = $request->message;
        $guest->user_id = $request->user_id;
        $guest->services  = implode(', ', $service_array);


//        dd($guest);
//        exit();

        if ($guest->save()){

            return redirect('/contact')->with('success',true)->with('message','Our expert will contact with you soon');

        }
    }

    // for featured products all list
     public function featuredProducts()
    {
        $data = array();
        $data['departments'] = Department::with('categories')->latest()->get();
        $data['banners'] = DB::table('banners')->get();
        $data['sliders'] = DB::table('sliders')->get();
        $data['products'] = Product::with('categories', 'brands', 'productimages')->whereStatus(1)->latest()->paginate($this->pagination);
//        dd($data['products']);
        $top_sales = DB::table('order_details')->latest()->get();
//        dd($top_sales);
//        exit();
        $data['top_saling'] = array();
        foreach ($top_sales as $top_sale) {
            $data['tops'] = Product::with('categories', 'brands', 'productimages')->whereId($top_sale->product_id)->whereStatus(1)->first();
            array_push($data['top_saling'], $data['tops']);
        }
//        dd($data['top_sales']);
//        exit();
        $data['top_sales'] = array_unique($data['top_saling']);

        return view('frontend.show_more_featured')->with($data);
    }

    // end here

    public function searchProducts(Request $request)
    {

        $product = $request->get('product_name');

        $data['products'] = Product::with('categories', 'brands', 'productimages')->whereStatus(1)->where('name', 'LIKE',  '%' . $product . '%')
            ->get();
        //->where('new_price','<=',700) for price range
//        dd( $data['products']);
        $data['departments'] = Department::with('categories')->latest()->get();


        return view('frontend.search_product')->with($data);
    }

    public function productDetails($id)
    {
        $data = array();
        $data['product'] = Product::with('categories', 'brands', 'productimages')->find($id);
        $data['products'] = Product::with('categories', 'brands', 'productimages')->where('id', '!=', $id)->whereStatus(1)->whereCategoryId($data['product']->category_id)->latest()->get();
        $data['departments'] = Department::with('categories')->latest()->get();
        $data['reviews'] = DB::table('reviews')->where('product_id',$id)->get();
        if ($data['product'] == null || @$data['product']->status == 2) {
            return back();
        } else {
            $data['pageTitle'] = 'Product Details - ' . $data['product']->name; // please use department name
            return view('frontend.product-details')->with($data);
        }

        return view('frontend.product-details')->with($data);
    }

    public function categoryProduct($id)
    {
        $data = array();
        $data['pageTitle'] = 'Specific Category Product';
        $data['products'] = Product::with('categories', 'brands', 'productimages')->whereStatus(1)->whereCategoryId($id)->latest()->get();
        $data['departments'] = Department::with('categories')->latest()->get();
        return view('frontend.category-products')->with($data);
    }

    public function store_review(Request $request)
    {

        $data = new Review();
        $data['customer_name'] = $request->customer_name;
        $data['email'] = $request->email;
        $data['product_id'] = $request->product_id;
        $data['rating'] = $request->rating;
        $data['review'] = $request->review;

        $data->save();

//        $data['pageTitle'] = 'Monthly Ad Product';
//        $data['ads'] = MonthlyAd::with('products')->where('created_at', '>=', Carbon::now()->startOfMonth())->latest()->get();
//        $data['departments'] = Department::with('categories')->latest()->get();
        return redirect()->to('product/'.$data['product_id']);
    }

}
