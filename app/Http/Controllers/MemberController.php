<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ourteam;
use App\Models\Header;

class MemberController extends Controller
{
    public function index()
    {
        $headers = Header::where('id', '=', '8')->get();
        $ourteams = Ourteam::oldest()->where('member_cat', '=', 'Pengurus')
        ->orWhere('member_cat', '=', 'Anggota')->when(request()->q, function($ourteams) {
            $ourteams = $ourteams->where('title', 'like', '%'. request()->q . '%');
        })->paginate(12);

        return view('front.member.index',compact('ourteams','headers'));
    }

    public function show($slug)
    {
        $ourteam = Ourteam::where('slug', $slug)->first();
        $headers = Header::where('id', '=', '8')->get();

        return view('front.member.show', compact('ourteam','headers'));
    }

}
