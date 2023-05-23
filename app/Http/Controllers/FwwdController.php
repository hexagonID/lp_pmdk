<?php

namespace App\Http\Controllers;

use App\Models\Wwd;
use App\Models\Opening;
use App\Models\Header;
use Illuminate\Http\Request;
use Carbon\Carbon;


class FwwdController extends Controller
{
    public function index()
    {
        $wwds = Wwd::oldest()->get();
        $openings = Opening::latest()->take(1)->get();
        $headersambutan = Header::where('id', '=', '3')->get();

        return view('front.what-we-do.index', compact('wwds','openings','headersambutan'));

    }
     public function show($slug)
    {
        $wwd = Wwd::where('slug', $slug)->first();
        $headersambutan = Header::where('id', '=', '3')->get();
        $wwds = Wwd::oldest()->get();
        return view('front.what-we-do.show', compact('wwd','headersambutan','wwds'));
    }
}