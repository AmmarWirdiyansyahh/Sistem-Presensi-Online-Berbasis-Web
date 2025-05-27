@extends('layouts.app')

@section('breadcrumb')
Menu &gt;&gt; Riwayat Presensi
@endsection

@if (session('success'))
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            Swal.fire({
                icon: 'success',
                title: 'Berhasil!',
                text: '{{ session("success") }}',
                confirmButtonColor: '#28a745'
            });
        });
    </script>
@endif


@section('content')
<div class="container mx-auto px-4">

    {{-- Ambil Hari Ini --}}
    @php
        use Carbon\Carbon;
        $hariIni = Carbon::now()->locale('id')->isoFormat('dddd');
        $jadwalHariIni = $jadwals->where('hari', $hariIni)->sortBy('jam_mulai');
    @endphp

    {{-- Presensi Hari Ini --}}
    <h2 class="text-xl font-bold mb-4">Presensi Hari Ini ({{ $hariIni }})</h2>

    @if($jadwalHariIni->isEmpty())
        <div class="bg-red-100 border-l-4 border-red-500 text-red-800 p-4 rounded-md mb-6" role="alert">
            <p class="font-bold">Tidak Ada Jadwal Hari Ini</p>
            <p>Tidak ada presensi yang dijadwalkan untuk hari ini.</p>
        </div>
    @else
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mb-6">
            @foreach($jadwalHariIni as $jadwal)
                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded shadow">
                    <p><strong>Mapel:</strong> {{ $jadwal->mapel->judul_mapel }}</p>
                    <p><strong>Kelas:</strong> {{ $jadwal->kelas->nama_kelas }}</p>
                    <p><strong>Hari:</strong> {{ $jadwal->hari }}</p>
                    <p><strong>Waktu:</strong> {{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }}</p>
                    <a href="{{ route('riwayat.lihat', $jadwal->id) }}" class="mt-2 inline-block bg-green-600 text-white px-4 py-1 rounded text-sm">
                        Lihat Presensi
                    </a>
                </div>
            @endforeach
        </div>
    @endif

    {{-- Riwayat Presensi Lengkap --}}
    <h2 class="text-xl font-bold mb-4">Riwayat Presensi Lengkap</h2>

    @if($jadwals->isEmpty())
        <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-800 p-4 rounded-md" role="alert">
            <p class="font-bold">Tidak Ada Riwayat Presensi</p>
            <p>Belum ada presensi yang dilakukan.</p>
        </div>
    @else
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            @foreach($jadwals->sortBy('jam_mulai') as $jadwal)
                <div class="bg-white p-4 rounded shadow">
                    <p><strong>Mapel:</strong> {{ $jadwal->mapel->judul_mapel }}</p>
                    <p><strong>Kelas:</strong> {{ $jadwal->kelas->nama_kelas }}</p>
                    <p><strong>Hari:</strong> {{ $jadwal->hari }}</p>
                    <p><strong>Waktu:</strong> {{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }}</p>
                    <a href="{{ route('riwayat.lihat', $jadwal->id) }}" class="mt-2 inline-block bg-blue-600 text-white px-4 py-1 rounded text-sm">
                        Lihat Presensi
                    </a>
                </div>
            @endforeach
        </div>
    @endif

</div>
@endsection