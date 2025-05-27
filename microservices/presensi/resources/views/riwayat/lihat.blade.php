@extends('layouts.app')

@section('breadcrumb')
Menu &gt;&gt; Riwayat Presensi &gt;&gt; Lihat Presensi
@endsection

@section('content')
<h2 class="text-xl font-bold mb-4">Detail Presensi</h2>

<div class="mb-4">
    <p><strong>Mapel:</strong> {{ $jadwal->mapel->judul_mapel }}</p>
    <p><strong>Kelas:</strong> {{ $jadwal->kelas->nama_kelas }}</p>
    <p><strong>Guru:</strong> {{ $jadwal->guru->nama }}</p>
    <p><strong>Hari:</strong> {{ $jadwal->hari }}</p>
    <p><strong>Waktu:</strong> {{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }}</p>
</div>

<table class="w-full table-auto border border-collapse text-sm">
    <thead class="bg-blue-200">
        <tr>
            <th class="border px-2 py-1">No</th>
            <th class="border px-2 py-1">Nama</th>
            <th class="border px-2 py-1">NIS</th>
            <th class="border px-2 py-1">Keterangan</th>
            <th class="border px-2 py-1">Waktu Presensi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($presensi as $i => $p)
        <tr>
            <td class="border px-2 py-1 text-center">{{ $i+1 }}</td>
            <td class="border px-2 py-1">{{ $p->siswa->nama }}</td>
            <td class="border px-2 py-1">{{ $p->siswa->nis }}</td>
            <td class="border px-2 py-1 text-center status-{{ strtolower($p->status) }}">{{ ucfirst($p->status) }}</td>
            <td class="border px-2 py-1 text-center">{{ \Carbon\Carbon::parse($p->waktu)->format('d-m-Y H:i') }}</td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection
