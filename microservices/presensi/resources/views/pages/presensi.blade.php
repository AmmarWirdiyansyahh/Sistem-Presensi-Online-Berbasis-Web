@extends('layouts.app')

@section('title', 'Presensi')

@section('breadcrumb')
Menu &gt;&gt; Presensi
@endsection

@section('content')
@php
    use Carbon\Carbon;
    $hariIni = Carbon::now()->locale('id')->isoFormat('dddd');
    $jadwalHariIni = $jadwals->where('hari', $hariIni)->sortBy('jam_mulai');
@endphp

<h1 class="text-2xl font-bold mb-4">Presensi</h1>

@if ($jadwalHariIni->isEmpty())
    <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-800 p-4 rounded-md" role="alert">
        <p class="font-bold">Belum Ada Jadwal Presensi Hari Ini ({{ $hariIni }})</p>
        <p class="mb-2">Silakan mulai presensi melalui halaman dashboard jika sudah tersedia jadwal hari ini.</p>
        <a href="{{ route('home.index') }}" class="inline-block bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
            Ke Dashboard
        </a>
    </div>
@else
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        @foreach($jadwalHariIni as $jadwal)
            <div class="bg-white p-4 rounded shadow">
                <p><strong>Mapel:</strong> {{ $jadwal->mapel->judul_mapel }}</p>
                <p><strong>Kelas:</strong> {{ $jadwal->kelas->nama_kelas }}</p>
                <p><strong>Hari:</strong> {{ $jadwal->hari }}</p>
                <p><strong>Waktu:</strong> {{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }}</p>
                <a href="{{ route('presensi.mulai', $jadwal->id) }}" class="mt-2 inline-block bg-green-600 text-white px-4 py-1 rounded text-sm">
                    Mulai Presensi
                </a>
            </div>
        @endforeach
    </div>
@endif
@endsection
