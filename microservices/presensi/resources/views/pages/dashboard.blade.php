@extends('layouts.app')

@section('breadcrumb')
Menu &gt;&gt; Dashboard
@endsection

@section('content')

<h2 class="font-extrabold text-lg mb-6 select-none">
    Selamat Datang, {{ auth()->user()->name }}!
</h2>


@if($jadwalHariIni->isEmpty())
    <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-800 p-4 rounded-md mb-6" role="alert">
        <p class="font-bold">Tidak Ada Jadwal Presensi</p>
        <p>Semua presensi telah diselesaikan atau belum tersedia untuk hari ini.</p>
    </div>
@else
    <div class="relative">
        <button aria-label="Scroll left" id="scrollLeft" class="absolute left-0 top-1/2 -translate-y-1/2 bg-white border border-gray-300 rounded-full w-8 h-8 flex items-center justify-center shadow-md z-10 hover:bg-gray-100 focus:outline-none">
            <i class="fas fa-chevron-left text-gray-700"></i>
        </button>
        <div id="cardsContainer" class="flex space-x-6 overflow-x-auto scroll-smooth px-10">
            @foreach($jadwalHariIni as $jadwal)
                {{-- Kartu jadwal presensi (seperti sebelumnya) --}}
                 <div class="bg-[#D9EDF9] rounded-xl p-4 min-w-[280px] flex flex-col items-center shrink-0">
                    @php
                        $mapelName = $jadwal->mapel->judul_mapel;
                        $gambarMapel = [
                            'Matematika' => 'https://i.pinimg.com/736x/29/f5/fe/29f5feb2f3e6aef97ed201efd0f351e2.jpg',
                            'Bahasa Inggris' => 'https://i.pinimg.com/736x/6d/4f/d4/6d4fd43eec1a1f4a242695362aa3411e.jpg',
                            'Sejarah' => 'https://i.pinimg.com/736x/7b/9e/d7/7b9ed77ed6472bb0816b317096c2a10a.jpg',
                            'Fisika' => 'https://i.pinimg.com/736x/d2/a9/17/d2a917eff77dae61b10b895f37048523.jpg',
                            'Kimia' => 'https://i.pinimg.com/736x/98/9d/18/989d188bd6f65accbdfb3f186cab21e8.jpg',
                            'Biologi' => 'https://i.pinimg.com/736x/94/68/55/9468556ed175e0899b77c2d2741d3340.jpg',
                            'Ekonomi' => 'https://i.pinimg.com/736x/1a/35/e3/1a35e336fd64287cc8050b2f93d37f61.jpg',
                            'Sosiologi' => 'https://i.pinimg.com/736x/4a/4d/52/4a4d5257680f1edc0fd270197df88ce1.jpg',
                            'Geografi' => 'https://i.pinimg.com/736x/98/fc/b0/98fcb0cc7b12e09ff7120abe9c61c370.jpg',
                            'Bahasa Indonesia' => 'https://i.pinimg.com/736x/d5/97/ae/d597ae280bff0b2dfc95a062b463b3a0.jpg',
                            'Seni Budaya' => 'https://i.pinimg.com/736x/49/f3/8f/49f38f875bcc008d624a381ae837c204.jpg',
                            'Penjaskes' => 'https://i.pinimg.com/736x/7d/c4/df/7dc4df1425afef136be856c295b143bb.jpg',
                        ];

                        $gambarUrl = $gambarMapel[$mapelName] ?? 'https://storage.googleapis.com/a1aa/image/b5190bbe-6a19-4d1f-81b1-730a0fed223c.jpg'; // default
                    @endphp


                    <img alt="{{ $mapelName }}" class="rounded-lg mb-3" height="140" src="{{ $gambarUrl }}" width="200"/>
                    <p class="font-bold text-center text-base select-none">
                        {{ $mapelName }}
                    </p>
                    <p class="text-center text-sm select-none">
                        Kelas {{ $jadwal->kelas->nama_kelas }}
                    </p>
                    @php
                        $siswaCount = $jadwal->kelas->siswa()->count();
                    @endphp
                    <p class="text-center text-xs mt-1 mb-3 select-none">
                        Jumlah Siswa : {{ $siswaCount }} Orang
                    </p>
                    <a href="{{ route('presensi.mulai', $jadwal->id) }}" class="bg-[#1E9B3E] text-white text-xs rounded-md w-full py-3 text-center block">
                        Mulai Presensi
                    </a>
                </div>
            @endforeach
        </div>
        <button aria-label="Scroll right" id="scrollRight" class="absolute right-0 top-1/2 -translate-y-1/2 bg-white border border-gray-300 rounded-full w-8 h-8 flex items-center justify-center shadow-md z-10 hover:bg-gray-100 focus:outline-none">
            <i class="fas fa-chevron-right text-gray-700"></i>
        </button>
    </div>
@endif

@endsection
