<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Color;

class ColorController extends Controller
{
    public function index()
    {
        $colors = Color::latest()->take(1)->get();

        return view('admin.color.index', compact('colors'));
    }


    public function edit($id)
    {
        $color = Color::findOrfail($id);
        return view('admin.color.edit', compact('color'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'color1'             => 'required',
            // 'color2'             => 'required',
            // 'color3'             => 'required',
            // 'color4'             => 'required',
            // 'color5'             => 'required',
        ]); 

        
            //update data tanpa image
            $color = Color::findOrfail($id);
            $color->update([
                'color1'                   => $request->color1,
                'color2'                   => $request->color2,
                'color3'                   => $request->color3,
                'color4'                   => $request->color4,
                'color5'                   => $request->color5,
                'color_body1'              => $request->color_body1,
                'color_body2'              => $request->color_body2,
                
            ]);

        

        if($color){
            //redirect dengan pesan sukses
            return redirect()->route('admin.color.edit',1)->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.color.edit',1)->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
