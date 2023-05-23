<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Benefit;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class BenefitController extends Controller
{

    public function index()
    {
        $benefits = Benefit::latest()->when(request()->q, function($benefits) {
            $benefits = $benefits->where('name', 'like', '%'. request()->q . '%');
        })->paginate(10);
        

        return view('admin.benefit.index', compact('benefits'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.benefit.create');
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
            'image'             => 'required|image|mimes:jpeg,jpg,png|max:500',
            'name'             => 'required',
            'description'              => 'required',
            'content'             => 'required'
        ]);

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/benefits', $image->hashName());

        $benefit = Benefit::create([
                'image'                => $image->hashName(),
                'name'                   => $request->name,
                'slug'                   => Str::slug($request->name, '-'),
                'description'            => $request->description,
                'content'                => $request->content,
        ]);
 
        if($benefit){
            //redirect dengan pesan sukses
            return redirect()->route('admin.benefit.index')->with(['success' => 'Data Berhasil Disimpan!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.benefit.index')->with(['error' => 'Data Gagal Disimpan!']);
        }
    }

    public function edit($id)
    {
        $benefit = Benefit::findOrfail($id);
        return view('admin.benefit.edit', compact('benefit'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name'         => 'required',
            'image'                 => 'nullable|image|mimes:jpeg,jpg,png|max:500',
        ]); 

        //check jika image kosong
        if($request->file('image') == '') {
            
            //update data tanpa image
            $benefit = Benefit::findOrfail($id);
            $benefit->update([
                'name'                   => $request->name,
                'slug'                   => Str::slug($request->name, '-'),
                'description'            => $request->description,
                'content'                => $request->content,
            ]);

        } else {
            $benefit = Benefit::findOrfail($id);
            //hapus image lama
            Storage::disk('local')->delete('public/benefits/'.basename($benefit->image));

            //upload image baru
            $image = $request->file('image');
            $image->storeAs('public/benefits', $image->hashName());

            //update dengan image baru
            $benefit = Benefit::findOrfail($id);
            $benefit->update([
                'image'                => $image->hashName(),
                'name'                   => $request->name,
                'slug'                   => Str::slug($request->name, '-'),
                'description'            => $request->description,
                'content'                => $request->content,
            ]);
        }

        if($benefit){
            //redirect dengan pesan sukses
            return redirect()->route('admin.benefit.index')->with(['success' => 'Data Berhasil Diupdate!']);
        }else{
            //redirect dengan pesan error
            return redirect()->route('admin.benefit.index')->with(['error' => 'Data Gagal Diupdate!']);
        }
    }
    /**
     * destroy
     *
     * @param  mixed $id
     * @return void
     */
    public function destroy($id)
    {
        $benefit = Benefit::findOrFail($id);
        Storage::disk('local')->delete('public/benefits/'.basename($benefit->image));
        $benefit->delete();

        if($benefit){
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
