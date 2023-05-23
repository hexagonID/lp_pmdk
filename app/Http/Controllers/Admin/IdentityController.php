<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Identity;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class IdentityController extends Controller
{
    public function index()
    {
        $identities = Identity::latest()->take(1)->get();

        return view('admin.identity.index', compact('identities'));
    }


    public function edit($id)
    {
        $identity = Identity::findOrfail($id);
        return view('admin.identity.edit', compact('identity'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name'             => 'required',
            'image'                 => 'nullable|image|mimes:jpeg,jpg,png|max:500',
        ]); 

        //check jika image kosong
        if($request->file('image') == '') {
            
            //update data tanpa image
            $identity = Identity::findOrfail($id);
            $identity->update([
                'name'                   => $request->name,
                'description'                   => $request->description,
                'address'                   => $request->address,
                'gmap'                   => $request->gmap,
                'phone'                   => $request->phone,
                'email'                   => $request->email,
                'fb'                   => $request->fb,
                'ig'                   => $request->ig,
                'tt'                   => $request->tt,
                'yt'                   => $request->yt,
            ]);

        } else {
            $identity = Identity::findOrfail($id);
            //hapus image lama
            Storage::disk('local')->delete('public/identities/'.basename($identity->image));

            //upload image baru
            $image = $request->file('image');
            $image->storeAs('public/identities', $image->hashName());

            //update dengan image baru
            $identity = Identity::findOrfail($id);
            $identity->update([
                'name'                   => $request->name,
                'description'                   => $request->description,
                'address'                   => $request->address,
                'gmap'                   => $request->gmap,
                'phone'                   => $request->phone,
                'email'                   => $request->email,
                'fb'                   => $request->fb,
                'ig'                   => $request->ig,
                'tt'                   => $request->tt,
                'yt'                   => $request->yt,
                'image'                => $image->hashName(),
            ]);
        }

        if($identity){
            //redirect dengan pesan sukses
            return redirect()->route('admin.identity.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.identity.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
    
}
