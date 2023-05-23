@extends('layouts.app', ['title' => 'Dashboard'])

@section('content')
<main class=" overflow-x-hidden overflow-y-auto" style="
background-color: {{ $colors[0]->color_body1 }}; /*fallback color*/
background-image: linear-gradient(to right, {{ $colors[0]->color_body1 }}, {{ $colors[0]->color_body2 }});
background-image: -moz-linear-gradient(left, {{ $colors[0]->color_body1 }}, {{ $colors[0]->color_body2 }}); /* Firefox */
background-image: -webkit-linear-gradient(left, {{ $colors[0]->color_body1 }}, {{ $colors[0]->color_body2 }}); /* Chrome, Safari */
background-image: -o-linear-gradient(left, {{ $colors[0]->color_body1 }}, {{ $colors[0]->color_body2 }}); /* Opera */
background-image: -ms-linear-gradient(left, {{ $colors[0]->color_body1 }}, {{ $colors[0]->color_body2 }}); /* IE 10+ */



">
<div class="wrapper" >
        <header class="admin">
            <div class="container">
                <div class="nav">
                    <div class="logo">
                      @foreach ($identities as $id)
                        <a href="index.html"><img src="{{asset('storage/identities/'.$id->image)}}" alt="logo" /></a>
                        @endforeach
                    </div>
                    <nav>
                        <div class="nav-menu">
                            <ul class="nav-links">
                                <li><a href="#1" class="nav-link" style="color: {{ $colors[0]->color1 }} !important"> <span ></span> About Us</a></li>
                                <li><a href="#2" class="nav-link" style="color: {{ $colors[0]->color1 }} !important">Why Choose Us</a></li>
                                <li><a href="#3" class="nav-link" style="color: {{ $colors[0]->color1 }} !important">Prestasi</a></li>
                                <li>
                                    <a href="#4" class="nav-link" style="color: {{ $colors[0]->color1 }} !important">Benefit</a>
                                </li>
                                <li><a href="#5" class="nav-link" style="color: {{ $colors[0]->color1 }} !important">Testimonies</a></li>
                                <li><a href="about.html" class="nav-link" style="color: {{ $colors[0]->color1 }} !important">Daftar Sekarang</a></li>
                                <li><a href="#" class="nav-link login" style="color: {{ $colors[0]->color1 }} !important" data-bs-toggle="modal"
                                        data-bs-target="#login">Contact Us</a></li>
                                
                            </ul>
                        </div>
                        <div class="nav-mobile-menu">
                            <span class="line line1"></span>
                            <span class="line line2"></span>
                            <span class="line line3"></span>
                        </div>
                    </nav>
                    <div class="nav-button">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#existingUser">Sign
                            Up</button>
                    </div>
                </div>
            </div>
           
    </header>
  </div>
  @foreach ($headlines as $h)
<section class="headline" style="background-color: {{$h->sec_color}};">
    <div class="container">
        <div class="row">
            
            <div class="col-md-6">
                <div class="mb-4 mt-4 fw-600" style="color: {{ $colors[0]->color1 }} !important">{!!$h->heading!!}</div>
                {!!$h->description!!}
                div.
            </div>
            <div class="col-md-6"></div>
            
        </div>
  </div>
</section>
@endforeach

</main>
@endsection