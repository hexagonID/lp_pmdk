<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Support\Facades\Route;


Route::get('/salaam', function () {
    return view('auth.login');
});
Route::get('/', [\App\Http\Controllers\HomeController::class,'index']) ->name('home');
// Route::resource('/post', \App\Http\Controllers\FpostController::class,['as' => 'post']);
// Route::resource('/agenda', \App\Http\Controllers\FagendaController::class,['as' => 'agenda']);
// Route::resource('/formdaftar', \App\Http\Controllers\FformdaftarController::class,['as' => 'front']);
// Route::resource('/contact', \App\Http\Controllers\FcontactController::class,['as' => 'front']);
// Route::get('/prestasi', [\App\Http\Controllers\FprestasiController::class,'index']) ->name('prestasi');
// Route::get('/testimony', [\App\Http\Controllers\FtestimonyController::class,'index']) ->name('testimony');
// Route::get('/sambutan', [\App\Http\Controllers\FsambutanController::class,'index']) ->name('sambutan');


// Route::resource('/tentangkami',  \App\Http\Controllers\AboutController::class,['as' => 'front']);
// Route::resource('/what-we-do',  \App\Http\Controllers\FwwdController::class,['as' => 'front']);
// Route::resource('/story',  \App\Http\Controllers\FsuccessController::class,['as' => 'front']);
// Route::resource('/ourteam',  \App\Http\Controllers\OurController::class,['as' => 'front']);
// Route::resource('/partner',  \App\Http\Controllers\PartnerController::class,['as' => 'front']);
// Route::resource('/social',  \App\Http\Controllers\SocialController::class,['as' => 'front']);
// Route::resource('/benefit',  \App\Http\Controllers\FbenefitController::class,['as' => 'front']);
// Route::resource('/member', \App\Http\Controllers\MemberController::class, ['as' => 'front']);
// Route::resource('/ucapan', \App\Http\Controllers\UcapanController::class, ['as' => 'front']);


// mobile
// Route::get('/profil', function () {return view('front.mobile.profile');})->name('profil');
// Route::get('/program', function () {return view('front.mobile.program');})->name('program');
// Route::get('/daftar', function () {return view('front.mobile.daftar');})->name('daftar');



/**
 * route for admin
 */

//group route with prefix "admin"
Route::prefix('admin')->group(function () {

    //group route with middleware "auth"
    Route::group(['middleware' => 'auth'], function() {

        //route dashboard
        Route::get('/dashboard', [DashboardController::class, 'index'])->name('admin.dashboard.index');
        
        //route resource alasan
        Route::resource('/unggulan', UnggulanController::class,['as' => 'admin']);

        //route resource Testimony
        Route::resource('/testimony', TestimonyController::class, ['as' => 'admin']);

        // //route resource identity
        Route::resource('/identity', IdentityController::class,['as' => 'admin']);

        // //route resource headline
        Route::resource('/headline', HeadlineController::class,['as' => 'admin']);

        // //route resource banner
        Route::resource('/banner', BannerController::class,['as' => 'admin']);
        
        //route resource impact
        // Route::resource('/impact', ImpactController::class, ['as' => 'admin']);

        //route profile
        Route::get('/profile', [ProfileController::class, 'index'])->name('admin.profile.index');

         //route resource color
         Route::resource('/color', ColorController::class, ['as' => 'admin']);
         
        //  Route::get('/admin/color/1/edit', [ColorController::class, 'edit'])->name('admin.color.edit');

         Route::get('admin/color/{id}/edit', 'App\Http\Controllers\Admin\ColorController@edit');

         //Pixel
         Route::resource('/pixel', PixelController::class, ['as' => 'admin']);
         Route::get('admin/pixel/{id}/edit', 'App\Http\Controllers\Admin\PixelController@edit');

         //Ganalytics
         Route::resource('/ganalytics', GanalyticsController::class, ['as' => 'admin']);
         Route::get('admin/ganalytics/{id}/edit', 'App\Http\Controllers\Admin\GanalyticsController@edit');
        
    });
});