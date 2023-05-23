<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ourteam;
use App\Models\Opening;
use App\Models\Header;
use Carbon\Carbon;

class OurController extends Controller
{
    public function index()
    {
        $ourteams=Ourteam::oldest()
    ->where('member_cat', '=', 'Pengurus')
    ->get();

        $headersambutan = Header::where('id', '=', '4')->get();


        return view('front.ourteam.index', compact('ourteams','headersambutan'));
    }
}
