<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Siswa;
use App\Models\Guru;
use App\Models\Presensi;
use App\Models\Jadwal;
use Carbon\Carbon;

class PresensiController extends Controller
{
    public function index()
    {
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

        return view('pages.presensi', compact('jadwals', 'jadwalHariIni'));
    }
    public function mulai($id_jadwal)
    {
        $jadwal = Jadwal::with(['kelas', 'guru'])->findOrFail($id_jadwal);

        // Ambil semua siswa yang sesuai dengan kelas dari jadwal
        $siswa = Siswa::where('id_kelas', $jadwal->id_kelas)->get();

        return view('presensi.mulai', compact('jadwal', 'siswa'));
    }
    

    public function store(Request $request)
    {
        $id_jadwal = $request->input('id_jadwal');

        foreach ($request->kehadiran as $id_siswa => $status) {
            Presensi::create([
                'id_jadwal' => $id_jadwal,
                'id_siswa' => $id_siswa,
                'status' => $status,
                'waktu' => now(),
            ]);
        }
        return redirect()->route('riwayat.index')->with('success', 'Presensi berhasil disimpan.');

        //return redirect()->route('presensi.mulai', $id_jadwal)->with('success', 'Presensi berhasil disimpan.');
    }
}


