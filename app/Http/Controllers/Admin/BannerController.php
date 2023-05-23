<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Banner;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class BannerController extends Controller
{
    public function index()
    {
        $banners = Banner::latest()->take(1)->get();

        return view('admin.banner.index', compact('banners'));
    }


    public function edit($id)
    {
        $banner = Banner::findOrfail($id);
        return view('admin.banner.edit', compact('banner'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'image' => 'image|mimes:jpeg,jpg,png,webp|max:1000',
        ]); 

        //check jika image kosong
        if($request->file('image') == '') {
            
            //update data tanpa image
            $banner = Banner::findOrfail($id);
            $banner->update([
            ]);

        } else {
            $banner = Banner::findOrfail($id);
            //hapus image lama
            Storage::disk('local')->delete('public/identities/'.basename($banner->image));

            //upload image baru
            $image = $request->file('image');
            $image->storeAs('public/identities', $image->hashName());

            //update dengan image baru
            $banner = Banner::findOrfail($id);
            $banner->update([
                'image'                     => $image->hashName(),
            ]);
        }

        if($banner){
            //redirect dengan pesan sukses
            return redirect()->route('admin.banner.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.banner.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
}
