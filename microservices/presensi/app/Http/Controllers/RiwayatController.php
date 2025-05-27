<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RiwayatController extends Controller
{
    public function index()
    {
        $user = auth()->user();
        $guru = \App\Models\Guru::where('nama', $user->name)->first();

        $jadwals = \App\Models\Jadwal::with(['mapel', 'kelas'])
                    ->where('id_guru', $guru->id)
                    ->whereHas('presensi') // hanya yang sudah presensi
                    ->get();

        return view('pages.riwayat', compact('jadwals'));
    }

    public function lihat($id)
    {
        $jadwal = \App\Models\Jadwal::with(['mapel', 'kelas', 'guru'])->findOrFail($id);
        $presensi = \App\Models\Presensi::with('siswa')
                        ->where('id_jadwal', $id)
                        ->get();

        return view('riwayat.lihat', compact('jadwal', 'presensi'));
    }


}
