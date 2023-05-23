<?php

namespace App\Http\Controllers;

use App\Models\Story;
use App\Models\Header;
use App\Models\Openingstory;
use Illuminate\Http\Request;
use Carbon\Carbon;

class FsuccessController extends Controller
{
    public function index()
    {
        $stories = Story::latest()->when(request()->q, function($stories) {
            $stories = $stories->where('name', 'like', '%'. request()->q . '%');
        })->paginate(10);

        $openingstories = Openingstory::latest()->take(1)->get();
        $header = Header::where('id', '=', '7')->get();
        
        return view('front.story.index', compact('stories','openingstories','header'));
    }

    public function show($slug)
    {
        $story = Story::where('slug', $slug)->first();
        $header = Header::where('id', '=', '7')->get();

        return view('front.story.show', compact('story','header'));
    }
}
