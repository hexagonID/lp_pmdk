@extends('layouts.app', ['title' => 'Edit Identitas'])

@section('content')
<main class="flex-1 overflow-x-hidden overflow-y-auto bg-gray-300">
    <div class="container mx-auto px-6 py-8">

    <div class="p-6 bg-white rounded-md shadow-md">
            <h2 class="text-lg text-gray-700 font-semibold capitalize">EDIT IDENTITAS ORGANISASI</h2>
            <hr class="mt-4">
            <form action="{{ route('admin.identity.update', $identity->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="row">
                        <div class="col-sm-5">
                            @if (file_exists(public_path('storage/identities/'.$identity->image)))
                                <img src="{{asset('storage/identities/'.$identity->image)}}" class="admin-edit-image">
                            @else
                                <img src="{{asset('storage/no_image.png')}}" class="admin-edit-image">
                            @endif
                        </div>
                        <div class="col-sm-7">
                            <div>
                                <label class="text-gray-700 py-2" for="image">GAMBAR</label>
                                <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white p-3" type="file" name="image">
                            </div>
                            <div>
                                <label class="text-gray-700 py-2" for="name">NAMA ORGANISASI</label>
                                <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="name" value="{{ old('name', $identity->name) }}" placeholder="Nama Organisasi">
                                @error('name')
                                    <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                        <div class="px-4 py-2">
                                            <p class="text-gray-600 text-sm">{{ $message }}</p>
                                        </div>
                                    </div>
                                @enderror
                            </div>
                            <div class="">
                                <label class="text-gray-700 py-2" for="address">ALAMAT</label>
                                <textarea id="editor1" name="address">{{ old('address', $identity->address) }}</textarea>
                                @error('address')
                                    <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                        <div class="px-4 py-2">
                                            <p class="text-gray-600 text-sm">{{ $message }}</p>
                                        </div>
                                    </div>
                                @enderror
                            </div>   
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="description">DESKRIPSI SINGKAT</label>
                        <textarea id="editor2" name="description">{{ old('description', $identity->description) }}</textarea>
                        @error('description')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div>   
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="gmap">GOOGLE MAP SCRIPT</label>
                        <div>
                        <textarea class="full-width" name="gmap" rows="11">{{ old('gmap', $identity->gmap) }}</textarea>
                        @error('gmap')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="phone">NOMOR KONTAK</label>
                        <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="phone" value="{{ old('phone', $identity->phone) }}" placeholder="Nomor Telepon">
                        @error('phone')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div>  
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="email">EMAIL</label>
                        <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="email" name="email" value="{{ old('email', $identity->email) }}" placeholder="Alamat Email">
                        @error('email')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div>  
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="fb">ID FACEBOOK</label>
                        <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="fb" value="{{ old('fb', $identity->fb) }}" placeholder="https://www.facebook.com/id_facebook">
                        @error('fb')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div> 
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="ig">ID INSTAGRAM</label>
                        <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="ig" value="{{ old('ig', $identity->ig) }}" placeholder="https://www.instagram.com/id_instagram">
                        @error('ig')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div> 
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="tt">ID TIKTOK</label>
                        <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="tt" value="{{ old('tt', $identity->tt) }}" placeholder="https://www.tiktok.com/id_tiktok">
                        @error('fb')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div> 
                    <div class="col-md-6">
                        <label class="text-gray-700 py-2" for="yt">ID YOUTUBE</label>
                        <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="yt" value="{{ old('yt', $identity->yt) }}" placeholder="https://www.youtube.com/@id_youtube">
                        @error('yt')
                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                <div class="px-4 py-2">
                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                </div>
                            </div>
                        @enderror
                    </div> 


                <div class="flex justify-start mt-4">
                    <button type="submit" class="px-4 py-2 bg-dark-green text-gray-200 rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700">SIMPAN</button>
                </div>
            </form>
        </div>
        
    </div>
</main>
<script>
        ClassicEditor
            .create( document.querySelector( '#editor1' ) )
            .catch( error => {
                console.error( error );
            });
            ClassicEditor
            .create( document.querySelector( '#editor2' ) )
            .catch( error => {
                console.error( error );
            });
            ClassicEditor
            .create( document.querySelector( '#editor3' ) )
            .catch( error => {
                console.error( error );
            });
    </script>
@endsection