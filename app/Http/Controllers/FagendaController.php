<?php

namespace App\Http\Controllers;

use App\Models\Agenda;
use App\Models\Header;
use App\Models\Post;
use Illuminate\Http\Request;
use Carbon\Carbon;


class FagendaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $agendas = Agenda::oldest()->where('end_date', '>', Carbon::today())->when(request()->q, function($agendas) {
            $agendas = $agendas->where('title', 'like', '%'. request()->q . '%');
        })->paginate(10);

        $agendaolds = Agenda::oldest()->where('end_date', '<', Carbon::today())->take(5)->get();
        $posts = Post::orderBy('date_show', 'desc')->where('date_show', '<', Carbon::today())->take(4)->get();
        $header = Header::where('id', '=', '11')->get();
        
        return view('front.fagenda.index', compact('agendas','agendaolds','posts','header'));
    }

     /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $agendas = Agenda::oldest()->where('end_date', '>', Carbon::today())->take(3)->get();
        $agenda = Agenda::where('slug', $slug)->first();
        $posts = Post::orderBy('date_show', 'desc')->where('date_show', '<', Carbon::today())->take(3)->get();
        $header = Header::where('id', '=', '11')->get();
        return view('front.fagenda.show', compact('agenda','agendas','posts','header'));
    }
}
