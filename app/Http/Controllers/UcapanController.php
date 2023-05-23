<?php

namespace App\Http\Controllers;

use App\Models\Ucapan;
use App\Models\Header;
use Illuminate\Http\Request;
use Carbon\Carbon;


class UcapanController extends Controller
{
    public function index()
    {
        $ucapans = Ucapan::oldest()->when(request()->q, function($ucapans) {
            $ucapans = $ucapans->where('title', 'like', '%'. request()->q . '%');
        })->paginate(12);
        $header = Header::where('id', '=', '13')->get();

        return view('front.ucapan.index', compact('ucapans','header'));

    }
     public function show($slug)
    {
        $ucapan = Ucapan::where('slug', $slug)->first();
        $header = Header::where('id', '=', '13')->get();
        $ucapans = Ucapan::oldest()->get();
        return view('front.ucapan.show', compact('ucapan','ucapans','header'));
    }
}