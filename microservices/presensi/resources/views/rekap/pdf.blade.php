<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Rekap Presensi - {{ ucfirst($periode) }}</title>
    <style>
        body {
            font-family: DejaVu Sans, sans-serif;
            font-size: 12px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h2 {
            margin: 0;
            font-size: 18px;
        }

        .header p {
            margin: 0;
            font-size: 14px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table, th, td {
            border: 1px solid #444;
        }

        th, td {
            padding: 6px;
            text-align: left;
        }

        .periode {
            margin-top: 10px;
        }

        .footer {
            margin-top: 40px;
            text-align: right;
            font-size: 12px;
        }
    </style>
</head>
<body>

<div class="header">
    <h2>REKAP PRESENSI GURU</h2>
    <p>Periode: {{ ucfirst($periode) }}</p>
</div>

<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Mapel</th>
            <th>Kelas</th>
            <th>Hari</th>
            <th>Jam</th>
            <th>Tanggal Presensi</th>
            <th>Jumlah Hadir</th>
            <th>Jumlah Izin</th>
            <th>Jumlah Sakit</th>
            <th>Jumlah Alpha</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($jadwals as $index => $jadwal)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $jadwal->mapel->judul_mapel }}</td>
                <td>{{ $jadwal->kelas->nama_kelas }}</td>
                <td>{{ $jadwal->hari }}</td>
                <td>{{ $jadwal->jam_mulai }} - {{ $jadwal->jam_selesai }}</td>
                <td>
                    @php
                        $waktu = $tanggalPresensi[$jadwal->id] ?? null;
                    @endphp

                    {{ $waktu ? \Carbon\Carbon::parse($waktu)->locale('id')->translatedFormat('d F Y') : '-' }}

                </td>

                {{-- Contoh tampilkan ringkasan presensi --}}
                <td>
                    Hadir: {{ $jadwal->presensi->where('status', 'Hadir')->count() }}
                </td>
                <td>
                    Izin: {{ $jadwal->presensi->where('status', 'Izin')->count() }}
                </td>
                <td>
                    Sakit: {{ $jadwal->presensi->where('status', 'Sakit')->count() }}
                </td>
                <td>
                    Alpha: {{ $jadwal->presensi->where('status', 'Alpha')->count() }}
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="10" style="text-align: center;">Tidak ada data jadwal pada periode ini.</td>
            </tr>
        @endforelse
    </tbody>
</table>

<div class="footer">
    <p>Dicetak pada: {{ \Carbon\Carbon::now()->format('d-m-Y') }}</p>
</div>

</body>
</html>
