<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Headline;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class HeadlineController extends Controller
{
    public function index()
    {
        $headlines = Headline::latest()->take(1)->get();

        return view('admin.headline.index', compact('headlines'));
    }


    public function edit($id)
    {
        $headline = Headline::findOrfail($id);
        return view('admin.headline.edit', compact('headline'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'heading'             => 'required',
            'image' => 'image|mimes:jpeg,jpg,png,webp|max:1000',
        ]); 

        //check jika image kosong
        if($request->file('image') == '') {
            
            //update data tanpa image
            $headline = Headline::findOrfail($id);
            $headline->update([
                'heading'                   => $request->heading,
                'description'               => $request->description,
                'id_youtube'                => $request->id_youtube,
                'sec_color'                 => $request->sec_color,
                'order_no'                  => $request->order_no,
                'position'                  => $request->position,
            ]);

        } else {
            $headline = Headline::findOrfail($id);
            //hapus image lama
            Storage::disk('local')->delete('public/identities/'.basename($headline->image));

            //upload image baru
            $image = $request->file('image');
            $image->storeAs('public/identities', $image->hashName());

            //update dengan image baru
            $headline = Headline::findOrfail($id);
            $headline->update([
                'heading'                   => $request->heading,
                'description'               => $request->description,
                'image'                     => $image->hashName(),
                'id_youtube'                => $request->id_youtube,
                'sec_color'                 => $request->sec_color,
                'order_no'                  => $request->order_no,
                'position'                  => $request->position,
            ]);
        }

        if($headline){
            //redirect dengan pesan sukses
            return redirect()->route('admin.headline.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.headline.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
