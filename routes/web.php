<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SampleController;


Route::get('/view_info/{id}', [SampleController::class, 'view_info']);

Route::get('/login', [SampleController::class, 'login_form'])->name('login');
Route::get('/login_form', [SampleController::class, 'login_form']);
Route::get('/register_form', [SampleController::class, 'register_form']);
Route::get('/logout', [SampleController::class, 'logout']);

Route::post('/check_login', [SampleController::class, 'check_login']);
Route::post('/register_employee', [SampleController::class, 'register_employee']);

Route::middleware('auth')->group(function () {
    Route::get('/sign_in_via_qr', [SampleController::class, 'sign_in_via_qr']);
    Route::get('/dashboard', [SampleController::class, 'dashboard']);
    
});