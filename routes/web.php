<?php

use App\Http\Controllers\BabiesController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ImmunizationController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\VaccineController;
use App\Models\ProgressBaby;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [PagesController::class, 'index']);

Auth::routes(['register' => false, 'reset' => false]);

Route::middleware('auth')->group(function(){
    Route::get('baby/{baby}/progress', [BabiesController::class, 'progress']);
    Route::get('baby/export', [BabiesController::class, 'export_excel']);
    Route::post('baby/progress', [BabiesController::class,'simpanprogress']);
    Route::resource('baby', BabiesController::class);
    //Route::get('baby', 'BabiesController@index');
    // Route::get('progress/{baby}', 'ProgressBabiesController@show');
    // Route::resource('progress', 'ProgressBabiesController');

    Route::get('/home', [HomeController::class, 'index'])->name('home');
    Route::get('/home/create', [HomeController::class, 'create']);
    Route::post('/home/store', [HomeController::class, 'store']);
    Route::get('/home/{user}/edit', [HomeController::class, 'edit']);
    Route::put('/home/{user}', [HomeController::class, 'update']);
    Route::delete('/home/{user}', [HomeController::class, 'destroy']);
    Route::get('/home/{id}/profile', [HomeController::class, 'profile']);
    Route::put('/home/{id}/profile', [HomeController::class, 'update_password']);

    Route::controller(VaccineController::class)->group(function(){
        Route::get('/vaccine', 'index');
        Route::get('/vaccine/create', 'create');
        Route::post('/vaccine/store', 'store');
        Route::get('/vaccine/{id}/show', 'show');
        Route::get('/vaccine/{id}/edit', 'edit');
        Route::put('/vaccine/{id}', 'update');
        Route::delete('/vaccine/{id}', 'destroy');
        Route::delete('/vaccine/{id}/unvaccinated', 'unvaccinated');
    });

    Route::controller(ImmunizationController::class)->group(function(){
        Route::get('/immunization', 'index');
        Route::get('/immunization/create/{id_baby}', 'create');
        Route::post('/immunization/{id_baby}', 'store');
        Route::get('/immunization/{id}/show', 'show');
        Route::get('/immunization/{id}/edit', 'edit');
        Route::put('/immunization/{id_baby}/update', 'update');
        Route::delete('/immunization/{id}', 'destroy');
    });
});

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
