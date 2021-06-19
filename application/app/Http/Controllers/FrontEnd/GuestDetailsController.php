<?php

namespace App\Http\Controllers\Frontend;

use App\GuestDetails;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\View\View;
use Mpdf\Mpdf;
use Session;
use PDF;

class GuestDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
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

        if ($guest->save()){

            return redirect('/contact')->with('success',true)->with('message','Our expert will contact with you soon');

        }


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\GuestDetails  $guestDetails
     * @return \Illuminate\Http\Response
     */
    public function show(GuestDetails $guestDetails)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\GuestDetails  $guestDetails
     * @return \Illuminate\Http\Response
     */
    public function edit(GuestDetails $guestDetails)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\GuestDetails  $guestDetails
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, GuestDetails $guestDetails)
    {
        //
    }

    public function pdf()
    {
        $data = [
            'name' => 'zaman'
        ];

        $pdf = PDF::loadView('promote.pdf', $data);
        return $pdf->download('invoice.pdf');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\GuestDetails  $guestDetails
     * @return \Illuminate\Http\Response
     */
    public function destroy(GuestDetails $guestDetails)
    {
        //
    }
}
