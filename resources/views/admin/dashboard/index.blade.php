@extends('layouts.app', ['title' => 'Dashboard'])

@section('content')
<main class=" overflow-x-hidden overflow-y-auto">
<div class="wrapper">
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
                                <li><a href="#1" class="nav-link ">About Us</a></li>
                                <li><a href="#2" class="nav-link">Why Choose Us</a></li>
                                <li><a href="#3" class="nav-link">Prestasi</a></li>
                                <li>
                                    <a href="#4" class="nav-link">Benefit</a>
                                </li>
                                <li><a href="#5" class="nav-link">Testimonies</a></li>
                                <li><a href="about.html" class="nav-link">Daftar Sekarang</a></li>
                                <li><a href="#" class="nav-link login" data-bs-toggle="modal"
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
  <span style="color: {{ $colors[0]->color1 }}">Ini adalah teks dengan warna yang diambil dari database.</span>


</main>
@endsection