<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PresensiController;
use App\Http\Controllers\RiwayatController;
use App\Http\Controllers\RekapController;
use App\Http\Controllers\Auth\LoginController;

Route::get('/', function () {
    return view('welcome');
});



Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    });

    Route::get('/home', [DashboardController::class, 'index'])->name('home.index');
    Route::get('/presensi', [PresensiController::class, 'index'])->name('presensi.index');
    Route::get('/presensi/mulai/{id_jadwal}', [PresensiController::class, 'mulai'])->name('presensi.mulai');
    Route::post('/presensi/simpan', [PresensiController::class, 'store'])->name('presensi.store');
    
    Route::get('/riwayat', [RiwayatController::class, 'index'])->name('riwayat.index');
    Route::get('/riwayat/{id}/lihat', [RiwayatController::class, 'lihat'])->name('riwayat.lihat');
    Route::get('/rekap', [RekapController::class, 'index'])->name('rekap.index');   
    Route::get('/rekap/unduh-pdf/{periode}', [RekapController::class, 'unduhPdf'])->name('rekap.unduh-pdf');


});


