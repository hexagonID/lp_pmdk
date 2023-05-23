<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Headline;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class DashboardController extends Controller
{    
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        $headlines = Headline::latest()->take(1)->get();

        return view('admin.dashboard.index', compact('headlines'));
    }
}