@extends('layouts.app')



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


@section('breadcrumb')
Menu &gt;&gt; Presensi &gt;&gt; Presensi Siswa
@endsection


@section('content')
<h1 class="text-xl font-bold mb-4">Presensi Siswa</h1>

<div class="flex">
    {{-- Sidebar Keterangan --}}
    <div class="w-1/4 h-full bg-blue-100 p-4 rounded-md flex flex-col">
        <h2 class="font-bold text-center mb-4">Keterangan Presensi</h2>
        <p><strong>Tanggal:</strong> {{ \Carbon\Carbon::now()->locale('id')->isoFormat('dddd, d F Y') }}</p>
        <p><strong>Waktu:</strong> {{ $jadwal->jam_mulai }} s/d {{ $jadwal->jam_selesai }}</p>
        <p><strong>Mata Pelajaran:</strong> {{ $jadwal->mapel->judul_mapel }}</p>
        <p><strong>Kelas:</strong> {{ $jadwal->kelas->nama_kelas }}</p>
        <p><strong>Guru:</strong> {{ $jadwal->guru->nama }}</p>
    </div>

    {{-- Tabel Siswa --}}
    <div class="w-3/4 ml-4">
        <form id="form-presensi"action="{{ route('presensi.store') }}" method="POST">
            @csrf
            <input type="hidden" name="id_jadwal" value="{{ $jadwal->id }}">

            <table class="w-full border text-sm">
                <thead class="bg-blue-300">
                    <tr>
                        <th class="border p-2">No</th>
                        <th class="border p-2">Nama Siswa</th>
                        <th class="border p-2">NIS</th>
                        <th class="border p-2">Jenis Kelamin</th>
                        <th class="border p-2">Keterangan Kehadiran</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($siswa as $index => $item)
                    <tr class="text-center item-center">
                        <td class="border p-2">{{ $index + 1 }}</td>
                        <td class="border p-2">{{ $item->nama }}</td>
                        <td class="border p-2">{{ $item->nis }}</td>
                        <td class="border p-2">{{ $item->jenis_kelamin }}</td>
                        <td class="border p-2">
                            <div class="flex justify-center gap-3">
                                <label class="flex flex-col items-center cursor-pointer text-center">
                                    <input type="radio" name="kehadiran[{{ $item->id }}]" value="hadir" class="hidden" onchange="updateColor(this)">
                                    <div class="w-12 h-12 min-w-[48px] min-h-[48px] flex items-center justify-center rounded bg-gray-200 hover:bg-green-200 text-white transition">
                                        ✔
                                    </div>
                                    <span class="text-xs mt-1">Hadir</span>
                                </label>

                                <label class="flex flex-col items-center cursor-pointer text-center">
                                    <input type="radio" name="kehadiran[{{ $item->id }}]" value="izin" class="hidden" onchange="updateColor(this)">
                                    <div class="w-12 h-12 min-w-[48px] min-h-[48px] flex items-center justify-center rounded bg-gray-200 hover:bg-yellow-200 text-white transition">
                                        ?
                                    </div>
                                    <span class="text-xs mt-1">Izin</span>
                                </label>

                                <label class="flex flex-col items-center cursor-pointer text-center">
                                    <input type="radio" name="kehadiran[{{ $item->id }}]" value="sakit" class="hidden" onchange="updateColor(this)">
                                    <div class="w-12 h-12 min-w-[48px] min-h-[48px] flex items-center justify-center rounded bg-gray-200 hover:bg-blue-200 text-white transition">
                                        S
                                    </div>
                                    <span class="text-xs mt-1">Sakit</span>
                                </label>

                                <label class="flex flex-col items-center cursor-pointer text-center">
                                    <input type="radio" name="kehadiran[{{ $item->id }}]" value="alpha" class="hidden" onchange="updateColor(this)">
                                    <div class="w-12 h-12 min-w-[48px] min-h-[48px] flex items-center justify-center rounded bg-gray-200 hover:bg-red-200 text-white transition">
                                        ✖
                                    </div>
                                    <span class="text-xs mt-1">Alpha</span>
                                </label>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

            <!-- Centered button -->
            <div class="flex justify-center mt-4">
                <button id="submitBtn" class="bg-green-600 text-white px-6 py-2 rounded-md hover:bg-green-700 transition duration-200">
                    Presensi Selesai
                </button>
            </div>
        </form>
    </div>
</div>
@endsection


@section('scripts')
<script>
document.getElementById('submitBtn').addEventListener('click', function (e) {
    e.preventDefault();
    Swal.fire({
        title: 'Selesai Presensi?',
        text: "Data yang disimpan tidak bisa diubah lagi.",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#1E9B3E',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya, Simpan!'
    }).then((result) => {
        if (result.isConfirmed) {
            // Submit form jika ada
            document.getElementById('form-presensi').submit();
        }
    });
});
</script>
<script>
function updateColor(radioElement) {
    const name = radioElement.name;
    const radios = document.querySelectorAll(`input[name="${name}"]`);

    // Reset warna semua tombol dalam grup yang sama
    radios.forEach(function (radio) {
        const btn = radio.nextElementSibling;
        if (btn) {
            btn.classList.remove('bg-green-500', 'bg-yellow-500', 'bg-blue-500', 'bg-red-500');
            btn.classList.add('bg-gray-200');
        }
    });

    // Tambahkan warna pada radio yang dipilih
    if (radioElement.checked) {
        const value = radioElement.value;
        const btn = radioElement.nextElementSibling;
        if (btn) {
            btn.classList.remove('bg-gray-200');
            switch (value) {
                case 'hadir':
                    btn.classList.add('bg-green-500');
                    break;
                case 'izin':
                    btn.classList.add('bg-yellow-500');
                    break;
                case 'sakit':
                    btn.classList.add('bg-blue-500');
                    break;
                case 'alpha':
                    btn.classList.add('bg-red-500');
                    break;
                default:
                    btn.classList.add('bg-gray-200'); // fallback
            }
        }
    }
}

// Terapkan warna saat halaman dimuat (jika ada yang sudah dipilih)
document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('input[type="radio"]:checked').forEach(function (radio) {
        updateColor(radio);
    });
});
</script>


@endsection
