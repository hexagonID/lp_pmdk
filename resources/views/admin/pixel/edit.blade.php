@extends('layouts.app', ['title' => 'Kode Facebook Pixel'])

@section('content')

<main class="flex-1 overflow-x-hidden overflow-y-auto">
    <div class="container mx-auto px-6 py-8">

    <div class="p-6 bg-white rounded-md shadow-md">
            <h2 class="text-lg text-gray-700 font-semibold capitalize">Edit Kode Facebook Pixel</h2>
            <form action="{{ route('admin.pixel.update', $pixel->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <textarea class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" name="pixel_code" rows="10">{{ old('pixel_code', $pixel->pixel_code) }}</textarea>
                @error('pixel_code')
                    <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                        <div class="px-4 py-2">
                            <p class="text-gray-600 text-sm">{{ $message }}</p>
                        </div>
                    </div>
                @enderror


                <div class="flex justify-start mt-4">
                    <button type="submit" class="px-4 py-2 bg-dark-green text-gray-200 rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700">SIMPAN</button>
                </div>
            </form>
        </div>
        
    </div>
</main>

@endsection