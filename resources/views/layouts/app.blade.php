<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/jpg" href="{{ asset('assets/img/favicon.png') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ $title }}</title>
    <!-- css -->
    
    <link rel="stylesheet" href="{{ asset('vendor/tailwind/tailwind.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/fontawesome/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/css/media.css') }}">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.1/dist/alpine.min.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/35.4.0/classic/ckeditor.js"></script>
</head>

<body class="d-flex flex-column min-vh-100">
    <div x-data="{ sidebarOpen: false }" class="flex bg-gray-200 h-full font-roboto">
        <div :class="sidebarOpen ? 'block' : 'hidden'" @click="sidebarOpen = false"
            class="fixed z-20 inset-0 bg-black opacity-50 transition-opacity lg:hidden"></div>

        <div :class="sidebarOpen ? 'translate-x-0 ease-out' : '-translate-x-full ease-in'"
            class="fixed z-30 inset-y-0 left-0 w-64 transition duration-300 transform bg-dark-green overflow-y-auto lg:translate-x-0 lg:static lg:inset-0">
            <div class="flex items-center justify-center mt-4">
                <div class="flex items-center">
                    @foreach ($identities as $q)
                    <img src="{{asset('storage/identities/'.$q->image)}}" alt="{{$q->name}}" class="logo-dashboard">
                    @endforeach
                </div>
            </div>

            <hr>

            @include('layouts.nav')
            
        </div>
        <div class="flex-1 flex flex-col overflow-hidden">
            @include('layouts.header')
            <div>
                @yield('content')
            </div>
            
            @include('layouts.footer')
            </div>
        </div>
        
    </div>
    <script src="{{ asset('vendor/tailwind/tailwind.js') }}"></script>
    <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('vendor/fontawesome/all.min.js') }}"></script>
    <!-- <script src="{{ asset('lp/js/bootstrap.bundle.min.js') }}"></script> -->
    <script src="{{ asset('lp/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('lp/js/main.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>


    <script>
        @if(session()->has('success'))

        Swal.fire({
            icon: 'success',
            title: 'BERHASIL!',
            text: '{{ session('success') }}',
            showConfirmButton: false,
            timer: 3000
        })

        @elseif(session()->has('error'))

        Swal.fire({
            icon: 'error',
            text: 'GAGAL!',
            title: '{{ session('error') }}',
            showConfirmButton: false,
            timer: 3000
        })

        @endif
    </script>
</body>
</html>