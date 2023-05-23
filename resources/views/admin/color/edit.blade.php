@extends('layouts.app', ['title' => 'Data Warna'])

@section('content')

<main class="flex-1 overflow-x-hidden overflow-y-auto">
    <div class="container mx-auto px-6 py-8">

    <div class="p-6 bg-white rounded-md shadow-md">
            <h2 class="text-lg text-gray-700 font-semibold capitalize">Edit Warna</h2>
            <hr class="mt-4">
            <form action="{{ route('admin.color.update', $color->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <table>
                    <tr>
                        <td>Primary Color</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color1" value="{{ old('color1', $color->color1) }}" placeholder="Kode Warna">
                            @error('color1')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color1}};"></div></td>
                    </tr>
                    <tr>
                        <td>Secondary Color</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color2" value="{{ old('color2', $color->color2) }}" placeholder="Kode Warna">
                            @error('color2')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color2}};"></div></td>
                    </tr>
                    <tr>
                        <td>Tertiary Color</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color3" value="{{ old('color3', $color->color3) }}" placeholder="Kode Warna">
                            @error('color3')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color3}};"></div></td>
                    </tr>
                    <tr>
                        <td>Complementary Color</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color4" value="{{ old('color4', $color->color4) }}" placeholder="Kode Warna">
                            @error('color4')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color4}};"></div></td>
                    </tr>
                    <tr>
                        <td>Button Color</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color5" value="{{ old('color5', $color->color5) }}" placeholder="Kode Warna">
                            @error('color5')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color5}};"></div></td>
                    </tr>
                    <tr>
                        <td>Body Color 1</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color_body1" value="{{ old('color_body1', $color->color_body1) }}" placeholder="Kode Warna">
                            @error('color_body1')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color_body1}};"></div></td>
                    </tr>
                    <tr>
                        <td>Body Color 2</td>
                        <td>: </td>
                        <td style="width:100px;">
                            <input class="form-input w-full mt-2 rounded-md bg-gray-200 focus:bg-white" type="text" name="color_body2" value="{{ old('color_body2', $color->color_body2) }}" placeholder="Kode Warna">
                            @error('color_body2')
                                <div class="w-full bg-red-200 shadow-sm rounded-md overflow-hidden mt-2">
                                    <div class="px-4 py-2">
                                        <p class="text-gray-600 text-sm">{{ $message }}</p>
                                    </div>
                                </div>
                            @enderror
                        </td>
                        <td ><div style="width: 77px; height: 40px; margin-left:10px; margin-bottom:-8px; border-radius:5px; background-color: {{$color->color_body2}};"></div></td>
                    </tr>
                </table>

                <div class="flex justify-start mt-4">
                    <button type="submit" class="px-4 py-2 bg-gray-600 text-gray-200 rounded-md hover:bg-gray-700 focus:outline-none focus:bg-gray-700">SIMPAN</button>
                </div>
            </form>
        </div>
        
    </div>
</main>

@endsection