<?php

namespace App\Http\Controllers\Admin;

use App\Banner;
use App\MonthlyAd;
use App\Product;
use App\Review;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;
use Image;


class UtilityController extends Controller
{
    public $pagination = 10;
    public function monthlyAdIndex()
    {
        $data = array();
        $data['pageTitle'] = 'Monthly Ad | Admin';
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['ad_list'] = 'm-menu__item--active';
        $data['ads_list'] = MonthlyAd::with('products')->latest()->paginate($this->pagination);
        return view('admin.monthly-ads.monthly-ads')->with($data);
    }

    public function monthlyAdAdd()
    {
        $data = array();
        $data['pageTitle'] = 'Add New Category'; // please use frontend name
        $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
        $data['ad_list'] = 'm-menu__item--active';
        $data['products_list'] = Product::latest()->get();
        return view('admin.monthly-ads.add')->with($data);
    }

    public function monthlyAdStore(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'image' => 'required|mimes:jpeg,png',
            'product_id' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect('admin/monthly-ads/add')->withErrors($validator)->withInput();
        }
        $ads = new MonthlyAd();
        $ads->ads_name = $request->name;
        $ads->product_id = $request->product_id;
        $ads->save();

        $file = $request->file('image');
        $extension = $file->getClientOriginalExtension(); // getting image extension
        $filename =$ads->ads_name.'-'.time().'.'.$extension;
        $thumbnailImage = Image::make($file);
        $thumbnailPath = 'assets/img/monthly-ads/';
        $thumbnailImage->resize(800,800);
        $thumbnailImage->save($thumbnailPath.$filename);
        $upload_path = 'assets/img/monthly-ads/'.$filename;
        $ads->image_path = $upload_path;
        $ads->save();
        return redirect('admin/monthly-ads/')->with('message', 'Monthly Ad created successfully');
    }

    public function monthlyAdEdit($id)
    {
        $data = array();
        $data['ad'] = MonthlyAd::find($id);

        if ( $data['ad'] == null){
            return back();
        }
        else{
            $data['pageTitle'] = 'Monthly Ad Update - '.$data['ad']->ads_name; // please use frontend name
            $data['ads'] = 'm-menu__item--open m-menu__item--expanded';
            $data['ad_list'] = 'm-menu__item--active';
            $data['products_list'] = Product::latest()->get();
            return view('admin.monthly-ads.edit')->with($data);
        }
    }

    public function monthlyAdUpdate(Request $request)
    {
        $id = $request->id;
        $request->validate([
            'ads_name' => 'required|max:255',
            'image' => 'mimes:jpeg,png',
            'product_id' => 'required',
        ]);

        $ads = MonthlyAd::find($id);
        $ads->ads_name = $request->ads_name;
        $ads->product_id = $request->product_id;
        $ads->save();
        if($request->hasfile('image'))
        {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension(); // getting image extension
            $filename =$ads->ads_name.'-'.time().'.'.$extension;
            $thumbnailImage = Image::make($file);
            $thumbnailPath = 'assets/img/monthly-ads/';
            $thumbnailImage->resize(800,800);
            $thumbnailImage->save($thumbnailPath.$filename);
            $upload_path = 'assets/img/monthly-ads/'.$filename;
            $ads->image_path = $upload_path;
            $ads->save();
        }
        return redirect('admin/monthly-ads/')->with('message', 'Selected Ad Update successfully.');
    }

    public function monthlyAdDelete(Request $request)
    {
        if($request->ajax()){
            $id = $request->get('id');
            $ads = MonthlyAd::find($id);
            $ads->delete();
            $data['ads_list'] = MonthlyAd::with('products')->latest()->paginate($this->pagination)->setPath(url('admin/monthly-ads')."?page=$request->page");
            return Response::json(View::make('admin.monthly-ads.render-monthly-ads', $data)->render());
        }
    }

    public function utilitiesIndex()
    {
        $data = array();
        $data['pageTitle'] = 'Utility Details | Admin';
        $data['utility'] = 'm-menu__item--active';
        $data['utilities'] = DB::table('utilities')->find(1);
        return view('admin.utilities.utilities')->with($data);
    }

    public function utilitiesEdit()
    {
        $data = array();
        $data['pageTitle'] = 'Utility Details | Admin';
        $data['utility'] = 'm-menu__item--active';
        $data['utilities'] = DB::table('utilities')->find(1);
        return view('admin.utilities.edit')->with($data);
    }

    public function utilitiesUpdate(Request $request)
    {
        DB::table('utilities')
            ->where('id', 1)
            ->limit(1)
            ->update(array('about_us' => $request->about_us,
                'privacy_statement' => $request->privacy_statement,
                'terms_conditions' => $request->terms_conditions,
                'shipment_policy' => $request->shipment_policy,
                'return_policy' => $request->return_policy,
                'how_to_return' => $request->how_to_return
            ));
        return redirect('admin/utilities/')->with('message', 'Utilities Update successfully.');
    }


    public function reviewsIndex(){
        $data = array();
        $data['pageTitle'] = 'Reviews Details | Admin';
        $data['review'] = 'm-menu__item--active';

        $data['reviews'] = Review::with('products')->paginate(20);

        return view('admin.reviews.reviews')->with($data);
    }


    public function reviewsEdit($id)
    {
        $data = array();
        $data['reviews'] = Review::find($id);

        if ($data['reviews'] == null) {
            return back();
        } else {
            $data['pageTitle'] = 'Reviews Update - ' . $data['reviews']->title; // please use frontend name
            $data['review'] = 'm-menu__item--open m-menu__item--expanded';
            $data['reviews_list'] = 'm-menu__item--active';
//            $data['products_list'] = Product::latest()->get();
            return view('admin.reviews.edit')->with($data);
        }
    }

    public function reviewsUpdate(Request $request)
    {
        $id = $request->id;


        $validator = Validator::make($request->all(), [
            'customer_name' => 'required|max:255',
            'email' => 'required',
            'rating' => 'required',
        ]);


        $reviewss = Review::find($id);
        $reviewss->customer_name = $request->name;
        $reviewss->email = $request->email;
        $reviewss->rating = $request->rating;
        $reviewss->review = $request->reviews;

//        dd($reviewss);
// exit();
        $reviewss->save();
        return redirect('admin/reviews/')->with('message', 'Selected Review Update successfully.');
    }

    public function reviewsDelete(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $banner = Review::find($id);
            $banner->delete();
            $data['reviews'] = Review::with('products')->paginate(20)->setPath(url('admin/reviews') . "?page=$request->page");
            return Response::json(View::make('admin.reviews.render-reviews', $data)->render());
        }
    }

}
