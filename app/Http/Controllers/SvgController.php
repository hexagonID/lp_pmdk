<?php

namespace App\Http\Controllers;

use App\Models\Svg;
use Illuminate\Http\Request;

class SvgController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $svgs = Svg::latest()->get();
        return view('front.component.counter_data', compact('svgs'));
    }

    
}
