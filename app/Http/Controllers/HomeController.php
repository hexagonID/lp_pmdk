<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Testimony;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller\Admin;
use Carbon\Carbon;
use App\Models\Svg;


class HomeController extends Controller
{
    public function index(){
        $sliders = Slider::latest()->take(4)->get();
        $testimonies = Testimony::latest()->take(4)->get();
        
        return view('front.frontpage.index', compact('sliders','testimonies'));
    }

    
    
}