<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\Testimony;
use Illuminate\Support\Str;


class TestimonyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $testimonies = Testimony::latest()->when(request()->q, function($testimonies) {
            $testimonies = $testimonies->where('name', 'like', '%'. request()->q . '%');
        })->paginate(10);

        return view('admin.testimony.index', compact('testimonies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.testimony.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'image' => 'required|image|mimes:jpeg,jpg,png|max:2000',
            'name'  => 'required',
            'title'  => 'required',
            'content'  => 'required',
        ]); 
 
        //upload image
        $image = $request->file('image');
        $image->storeAs('public/testimonies', $image->hashName());
 
        //save to DB
        $testimony = Testimony::create([
            'image'             => $image->hashName(),
            'name'              => $request->name,
            'title'              => $request->title,
            'slug'              => Str::slug($request->name, '-'),
            'content'           => $request->content,
            'yt_link'           => $request->yt_link,
            'user_id'           => auth()->user()->id,
        ]);
 
        if($testimony){
             //redirect dengan pesan sukses
             return redirect()->route('admin.testimony.index')->with(['success' => 'Data Berhasil Disimpan!']);
         }else{
             //redirect dengan pesan error
             return redirect()->route('admin.testimony.index')->with(['error' => 'Data Gagal Disimpan!']);
         }
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Testimony $testimony)
    {
        return view('admin.testimony.edit', compact('testimony'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Testimony $testimony)
    {
        $this->validate($request, [
            'name'  => 'required',
            'title'  => 'required',
            'content'  => 'required',
        ]); 

        //check jika image kosong
        if($request->file('image') == '') {
            
            //update data tanpa image
            $testimony = Testimony::findOrFail($testimony->id);
            $testimony->update([
                'name'              => $request->name,
                'title'              => $request->title,
                'slug'              => Str::slug($request->name, '-'),
                'content'           => $request->content,
                'yt_link'           => $request->yt_link,
                'user_id'           => auth()->user()->id,
            ]);

        } else {

            //hapus image lama
            Storage::disk('local')->delete('public/testimonies/'.basename($testimony->image));

            //upload image baru
            $image = $request->file('image');
            $image->storeAs('public/testimonies', $image->hashName());

            //update dengan image baru
            $testimony = Testimony::findOrFail($testimony->id);
            $testimony->update([
                'image'             => $image->hashName(),
                'name'              => $request->name,
                'title'              => $request->title,
                'slug'              => Str::slug($request->name, '-'),
                'content'           => $request->content,
                'yt_link'           => $request->yt_link,
                'user_id'           => auth()->user()->id,
            ]);
        }

        if($testimony){
            //redirect dengan pesan sukses
            return redirect()->route('admin.testimony.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.testimony.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $testimony = Testimony::findOrFail($id);
        Storage::disk('local')->delete('public/testimonies/'.basename($testimony->image));
        $testimony->delete();

        if($testimony){
            return response()->json([
                'status' => 'success'
            ]);
        }else{
            return response()->json([
                'status' => 'error'
            ]);
        }
    }
}
