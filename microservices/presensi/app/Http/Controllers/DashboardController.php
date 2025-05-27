<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Siswa;
use App\Models\Jadwal; // Pastikan model Jadwal di-include
use App\Models\User;
use App\Models\Guru;
use Carbon\Carbon;

class DashboardController extends Controller
{
    /**
     * Tampilkan halaman dashboard index.
     */
    public function index()
    {
        //dd(now()); // Harusnya hasilnya waktu WIB

        // Ambil user login
        $user = auth()->user();

        // Cari guru berdasarkan user
        $guru = Guru::where('nama', $user->name)->first();

        // Ambil semua jadwal milik guru yang belum ada presensi
        $jadwals = Jadwal::with(['mapel', 'guru', 'kelas'])
                    ->where('id_guru', $guru->id)
                    ->whereDoesntHave('presensi') // belum ada presensi
                    ->get();
                    
    
        $hariIni = Carbon::now()->locale('id')->isoFormat('dddd');
        $jadwalHariIni = $jadwals->where('hari', $hariIni);

        return view('pages.dashboard', compact('jadwals', 'jadwalHariIni'));
    }


}
