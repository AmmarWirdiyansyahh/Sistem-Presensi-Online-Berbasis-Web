@extends('layouts.app')

@section('title', 'Rekap Presensi')

@section('breadcrumb')
Menu &gt;&gt; Rekap Presensi
@endsection

@section('content')
@php
    use Carbon\Carbon;
@endphp

<h1 class="text-2xl font-bold mb-4">Rekap Presensi</h1>

{{-- Tombol Cetak PDF --}}
<div class="mb-4 flex gap-2">
    <button class="btn-unduh-pdf bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700" data-periode="minggu">
        Download PDF Mingguan
    </button>
    <button class="btn-unduh-pdf bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700" data-periode="bulan">
        Download PDF Bulanan
    </button>
    <button class="btn-unduh-pdf bg-purple-600 text-white px-4 py-2 rounded hover:bg-purple-700" data-periode="tahun">
        Download PDF Tahunan
    </button>
</div>

{{-- Tabel Rekap Jadwal --}}
@if($jadwals->isEmpty())
    <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-800 p-4 rounded-md" role="alert">
        <p class="font-bold">Belum Ada Data Presensi</p>
        <p>Anda belum memiliki riwayat presensi yang tercatat.</p>
    </div>
@else
    <div class="overflow-x-auto">
        <table class="min-w-full border border-gray-300 bg-white shadow-md rounded">
            <thead class="bg-gray-100">
                <tr>
                    <th class="px-4 py-2 border">No</th>
                    <th class="px-4 py-2 border">Mapel</th>
                    <th class="px-4 py-2 border">Kelas</th>
                    <th class="px-4 py-2 border">Hari</th>
                    <th class="px-4 py-2 border">Jam</th>
                    <th class="px-4 py-2 border">Tanggal Presensi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($jadwals as $index => $jadwal)
                <tr class="border-t">
                    <td class="px-4 py-2 border">{{ $index + 1 }}</td>
                    <td class="px-4 py-2 border">{{ $jadwal->mapel->judul_mapel }}</td>
                    <td class="px-4 py-2 border">{{ $jadwal->kelas->nama_kelas }}</td>
                    <td class="px-4 py-2 border">{{ $jadwal->hari }}</td>
                    <td class="px-4 py-2 border">{{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }}</td>
                    <td>
                        @php
                            $waktu = $tanggalPresensi[$jadwal->id] ?? null;
                        @endphp

                        {{ $waktu ? \Carbon\Carbon::parse($waktu)->locale('id')->translatedFormat('d F Y') : '-' }}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endif
@endsection

@section('scripts')
<script>
    document.querySelectorAll('.btn-unduh-pdf').forEach(btn => {
    btn.addEventListener('click', async () => {
        const periode = btn.getAttribute('data-periode');
        const url = `/rekap/unduh-pdf/${periode}`;

        try {
            const res = await fetch(url, {
                headers: {
                    'X-Requested-With': 'XMLHttpRequest',
                    'Accept': 'application/json',
                }
            });

            if (!res.ok) {
                const errorText = await res.text();
                console.error('Server Error:', errorText);
                throw new Error('Gagal mengambil data PDF');
            }

            const data = await res.json();
            const byteCharacters = atob(data.filedata);
            const byteNumbers = new Array(byteCharacters.length);
            for (let i = 0; i < byteCharacters.length; i++) {
                byteNumbers[i] = byteCharacters.charCodeAt(i);
            }
            const byteArray = new Uint8Array(byteNumbers);
            const blob = new Blob([byteArray], { type: 'application/pdf' });

            const link = document.createElement('a');
            link.href = URL.createObjectURL(blob);
            link.download = data.filename;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);

            setTimeout(() => URL.revokeObjectURL(link.href), 100);

        } catch (error) {
            console.error(error);
            alert('Gagal mengunduh PDF, coba lagi.');
        }
    });
});

</script>
@endsection
