<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Header;
use App\Models\Ourteam;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class FformdaftarController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $header = Header::where('id', '=', '9')->get();
        return view('front.formdaftar.index', compact('header'))  ;
    }
    
    public function create()
    {
        return view('front.formdaftar.create');
    }
   
    public function store(Request $request)
{
    $this->validate($request, [
        'image1' => 'image|mimes:jpeg,jpg,png,webp|max:1000',
        'image2' => 'image|mimes:jpeg,jpg,png,webp|max:1000',
        'image3' => 'image|mimes:jpeg,jpg,png,webp|max:1000',
        'image4' => 'image|mimes:jpeg,jpg,png,webp|max:1000',
        'name'              => 'required',
        'phone'              => 'required',
        'id_number'              => 'required',
        'email'              => 'required',
        'company_name'              => 'required',
    ]);

    $image1 = $request->file('image1');
    $image2 = $request->file('image2');
    $image3 = $request->file('image3');
    $image4 = $request->file('image4');

    if ($image1) {
        $image1->storeAs('public/ourteams', $image1->hashName());
    }

    if ($image2) {
        $image2->storeAs('public/ourteams', $image2->hashName());
    }

    if ($image3) {
        $image3->storeAs('public/ourteams', $image3->hashName());
    }

    if ($image4) {
        $image4->storeAs('public/ourteams', $image4->hashName());
    }

    $ourteam = Ourteam::create([
        'member_cat' => $request->member_cat,
        'title' => $request->title,
        'name' => $request->name,
        'slug' => Str::slug($request->name, '-'),
        'tanda_pengenal' => $request->tanda_pengenal,
        'id_number' => $request->id_number,
        'birth_place' => $request->birth_place,
        'birth_date' => $request->birth_date,
        'phone' => $request->phone,
        'address' => $request->address,
        'fb' => $request->fb,
        'ig' => $request->ig,
        'tt' => $request->tt,
        'email' => $request->email,
        'image1' => $image1 ? $image1->hashName() : null,
        'image2' => $image2 ? $image2->hashName() : null,
        'image3' => $image3 ? $image3->hashName() : null,
        'image4' => $image4 ? $image4->hashName() : null,
        'company_name' => $request->company_name,
        'company_category' => $request->company_category,
        'company_desc' => $request->company_desc,
        'company_email' => $request->company_email,
        'company_phone' => $request->company_phone,
        'company_address' => $request->company_address,
    ]);
 
        if($ourteam){
             //redirect dengan pesan sukses
             return redirect()->route('front.formdaftar.index')->with(['success' => 'Data Berhasil Disimpan!']);
         }else{
             //redirect dengan pesan error
             return redirect()->route('front.formdaftar.index')->with(['error' => 'Data Gagal Disimpan!']);
         }
    }
 
}
