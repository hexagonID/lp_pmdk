@extends('layouts.app', ['title' => 'Headline'])

@section('content')
<main class="flex-1 overflow-x-hidden overflow-y-auto bg-gray-300">
    <div class="container mx-auto px-6 py-8">

    <div class="p-6 bg-white rounded-md shadow-md">
            <h2 class="text-lg text-gray-700 font-semibold capitalize">Edit Headline</h2>
            <hr class="mt-4">
            <form action="{{ route('admin.headline.update', $headline->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="row">
                        <div class="col-sm-5">
                            @if($headline->image)
                                <img src="{{ asset('storage/identities/' . $headline->image) }}" alt="{{$headline->heading}}" class="admin-edit-image">
                            @else
                                <img src="{{ asset('storage/identities/no_image.jpg') }}" class="admin-edit-image">
                            @endif
                            
                        </div>
                        <div class="col-sm-7">
                            <div>
                                <label class="text-gray-700 py-2 mt-2" for="image">Hero Image</label>
                                <input class="form-input w-full rounded-md bg-gray-200 focus:bg-white p-3" type="file" name="image">
                            </div>
                            <div>
                                <label class="text-gray-700 py-2 mt-2" for="heading">Heading</label>
                                <input class="form-input w-full rounded-md bg-gray-200 focus:bg-white" type="text" name="heading" value="{{ old('heading', $headline->heading) }}" placeholder="Text Heading">
                                @error('heading')
                                    <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                        <div class="px-4 py-2">
                                            <p class="text-gray-600 text-sm">{{ $message }}</p>
                                        </div>
                                    </div>
                                @enderror
                            </div>
                            <div class="">
                                <label class="text-gray-700 py-2 mt-2" for="description">Description</label>
                                <textarea id="editor1" name="description">{{ old('description', $headline->description) }}</textarea>
                                @error('description')
                                    <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden">
                                        <div class="px-4 py-2">
                                            <p class="text-gray-600 text-sm">{{ $message }}</p>
                                        </div>
                                    </div>
                                @enderror
                            </div>
                            <div>
                                <label class="text-gray-700 py-2 mt-2" for="id_youtube">ID Youtube</label>
                                <input class="form-input w-full rounded-md bg-gray-200 focus:bg-white" type="text" name="id_youtube" value="{{ old('id_youtube', $headline->id_youtube) }}" placeholder="Id Youtube">
                                @error('id_youtube')
                                    <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                        <div class="px-4 py-2">
                                            <p class="text-gray-600 text-sm">{{ $message }}</p>
                                        </div>
                                    </div>
                                @enderror
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div>
                                        <label class="text-gray-700 py-2 mt-2" for="sec_color">Background Color</label>
                                        <input class="form-input w-full rounded-md bg-gray-200 focus:bg-white" type="text" name="sec_color" value="{{ old('sec_color', $headline->sec_color) }}" placeholder="Warna Latar">
                                        @error('sec_color')
                                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                                <div class="px-4 py-2">
                                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                                </div>
                                            </div>
                                        @enderror
                                    </div> 
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <label class="text-gray-700 py-2 mt-2" for="position">Position</label>
                                        <input class="form-input w-full rounded-md bg-gray-200 focus:bg-white" type="text" name="position" value="{{ old('position', $headline->position) }}" placeholder="Urutan Kolom">
                                        @error('position')
                                            <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                                <div class="px-4 py-2">
                                                    <p class="text-gray-600 text-sm">{{ $message }}</p>
                                                </div>
                                            </div>
                                        @enderror
                                    </div> 
                                </div>
                            </div>   
                        </div>
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