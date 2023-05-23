@extends('layouts.app', ['title' => 'Headline'])

@section('content')
<main class="flex-1 overflow-x-hidden overflow-y-auto min-h-screen">
    <div class="container mx-auto py-8">

      @foreach ($headlines as $hl)
        <h2 style="color: {{ $colors[0]->color1 }}">{{$hl->heading}}</h2>
        <div class="row">
            <div class="col-md-6">
            {!! $hl->description !!}
            </div>
            <div class="col-md-6">
                @if($hl->image)
                    <img src="{{asset('storage/identities/'.$hl->image)}}" alt="{{$hl->heading}}" class="admin-edit-image">
                @else
                    <img src="{{ asset('storage/identities/no_image.jpg') }}" class="img-ucapan">
                @endif

                <iframe width="100%" height="315" src="https://www.youtube.com/embed/{{$hl->id_youtube}}" title="{{$hl->heading}}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


            </div>
        </div>
        
        

        <div class="flex py-4 mx-10 my-4 justify-end">
          <a href="{{ route('admin.headline.edit', $hl->id) }}" class="flex align-items-start bg-dark-green px-4 py-2 mx-2 rounded shadow-sm text-xs text-white focus:outline-none"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">  <path stroke-linecap="round" stroke-linejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10" /></svg><h6 class="mx-2">Edit</h6></a>
        </div>
        @endforeach 
    </div>
</main>

@endsection