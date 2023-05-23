<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/jpg" href="{{asset('assets/img/favicon.png')}}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @foreach ($identities as $q)
    <title>{{ $title }} - {{ $q->name }}</title>
    <meta name="description" content="{!!$q->description!!}">
    @endforeach
    <!-- css -->
    
    <!-- <link rel="stylesheet" href="{{ asset('vendor/tailwind/tailwind.css') }}"> -->
    <!-- <link rel="stylesheet" href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}"> -->
    <!-- <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}"> -->

    <link rel="stylesheet" href="{{ asset('lp/assets/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/icofont.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/swiper.min.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/odometer.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/lightcase.css') }}">
    <link rel="stylesheet" href="{{ asset('lp/assets/css/style.css') }}">



    <link rel="stylesheet" href="{{ asset('assets/css/animation.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/fontawesome/all.min.css') }}">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- js -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.1/dist/alpine.min.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script> -->
</head>

<body>
    
        <div class="flex-1 flex flex-col overflow-hidden">

            @yield('content')


        </div>
    <!-- <script src="{{ asset('vendor/tailwind/tailwind.js') }}"></script>
    <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/js/custom.js') }}"></script> -->
    <script src="{{ asset('assets/js/animation.js') }}"></script>
    <script src="{{ asset('vendor/fontawesome/all.min.js') }}"></script>

    <script src="{{ asset('lp/assets/js/jquery.js') }}"></script>
    <script src="{{ asset('lp/assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/waypoints.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/swiper.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/jquery.counterup.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/circularProgressBar.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/wow.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/viewport.jquery.js') }}"></script>
    <script src="{{ asset('lp/assets/js/odometer.min.js') }}"></script>
    <script src="{{ asset('lp/assets/js/lightcase.js') }}"></script>
    <script src="{{ asset('lp/assets/js/functions.js') }}"></script>
</body>
</html>