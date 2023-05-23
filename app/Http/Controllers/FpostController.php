<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Header;
use App\Models\Post;
use App\Models\Category;
use App\Models\Agenda;
use Carbon\Carbon;


class FpostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::orderBy('date_show', 'desc')->where('date_show', '<', Carbon::today())->when(request()->q, function($posts) {
            $posts = $posts->where('title', 'like', '%'. request()->q . '%');
        })->paginate(10);
        $agendas = Agenda::oldest()->where('end_date', '>', Carbon::today())->take(4)->get();
        $header = Header::where('id', '=', '10')->get();
        
        return view('front.fpost.index', compact('posts','agendas','header'));
    }

     /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $categories = Category::latest()->get();
        $post = Post::where('slug', $slug)->first();
        $header = Header::where('id', '=', '10')->get();
        $posts = Post::orderBy('date_show', 'desc')->where('date_show', '<', Carbon::today())->take(4)->get();
        $agendas = Agenda::oldest()->where('end_date', '>', Carbon::today())->take(4)->get();

        return view('front.fpost.show', compact('post','categories','posts','agendas','header'));
    }

}
