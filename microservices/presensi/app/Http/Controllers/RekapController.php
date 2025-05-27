<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use App\Models\Jadwal;
use App\Models\Presensi;
use App\Models\Guru;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;

class RekapController extends Controller
{
    public function index()
    {
        // Ambil user login
        $user = auth()->user();

        // Cari data guru berdasarkan nama user
        $guru = Guru::where('nama', $user->name)->first();

        // Ambil jadwal milik guru yang sudah ada presensi
        $jadwals = Jadwal::with(['mapel', 'kelas'])
                    ->where('id_guru', $guru->id)
                    ->whereHas('presensi') // pastikan jadwal sudah memiliki data presensi
                    ->get();

        // Ambil satu waktu presensi (contoh: waktu pertama) per id_jadwal
        $tanggalPresensi = Presensi::select('id_jadwal', DB::raw('MIN(waktu) as waktu'))
                            ->groupBy('id_jadwal')
                            ->pluck('waktu', 'id_jadwal'); // hasil: [id_jadwal => waktu]

        return view('pages.rekap', compact('jadwals', 'tanggalPresensi'));
    }


    public function unduhPdf($periode)
{
    // Dapatkan range tanggal dari periode
    [$startDate, $endDate] = $this->getRangeTanggal($periode);

    // Cari id_jadwal yang punya presensi di rentang waktu
    $jadwalIds = Presensi::whereBetween('waktu', [$startDate, $endDate])
        ->distinct()
        ->pluck('id_jadwal');

    // Ambil jadwal dengan id yang sudah di dapat, beserta presensi dan siswa
    $jadwals = Jadwal::with([
        'mapel',
        'kelas',
        'presensi' => function($query) use ($startDate, $endDate) {
            $query->whereBetween('waktu', [$startDate, $endDate])->with('siswa');
        }
    ])
    ->whereIn('id', $jadwalIds)
    ->get();

    // Ambil satu tanggal presensi (misalnya: paling awal) per id_jadwal dalam rentang waktu
    $tanggalPresensi = Presensi::select('id_jadwal', DB::raw('MIN(waktu) as waktu'))
        ->whereBetween('waktu', [$startDate, $endDate])
        ->groupBy('id_jadwal')
        ->pluck('waktu', 'id_jadwal'); // hasil: [id_jadwal => waktu]

    \Log::info('Jadwals dengan presensi dalam periode: ' . $jadwals->toJson());

    $pdf = Pdf::loadView('rekap.pdf', compact('jadwals', 'periode', 'tanggalPresensi'))
        ->setPaper('A4', 'landscape');

    $output = base64_encode($pdf->output());

    return response()->json([
        'filename' => 'rekap_' . $periode . '_' . now()->format('Ymd_His') . '.pdf',
        'filedata' => $output,
    ]);
}

private function getRangeTanggal($periode)
{
    switch ($periode) {
        case 'minggu':
            return [now()->startOfWeek()->toDateTimeString(), now()->endOfWeek()->toDateTimeString()];
        case 'bulan':
            return [now()->startOfMonth()->toDateTimeString(), now()->endOfMonth()->toDateTimeString()];
        case 'tahun':
            return [now()->startOfYear()->toDateTimeString(), now()->endOfYear()->toDateTimeString()];
        default:
            return [now()->startOfMonth()->toDateTimeString(), now()->endOfMonth()->toDateTimeString()];
    }
}


}

