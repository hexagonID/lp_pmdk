<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\About;
use App\Models\Visi;
use App\Models\Misi;
use App\Models\Header;
use App\Models\Videoprofile;

class AboutController extends Controller
{
    public function index()
    {

    $abouts = About::all();
    $videoprofiles = Videoprofile::all();
    $visis = Visi::all();
    $misis = Misi::all();
    $headersambutan = Header::where('id', '=', '2')->get();

    return view('front.about.index',compact('abouts','videoprofiles','visis','misis','headersambutan'));
    
    }
}
