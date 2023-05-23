@extends('layouts.app', ['title' => 'Kode Google Analytics'])

@section('content')

<main class="flex-1 overflow-x-hidden overflow-y-auto">
    <div class="container mx-auto px-6 py-8">

    <div class="p-6 bg-white rounded-md shadow-md">
            <h2 class="text-lg text-gray-700 font-semibold capitalize">Edit Kode Google Analytics</h2>
            <form action="{{ route('admin.ganalytics.update', $ganalytics->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <textarea class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" name="ganalytics_code" rows="10">{{ old('ganalytics_code', $ganalytics->ganalytics_code) }}</textarea>
                @error('ganalytics_code')
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