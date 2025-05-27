<aside id="sidebar" class="fixed top-0 left-0 h-full bg-[#6B8CA6] w-[280px] flex flex-col z-50 transition-transform duration-500 ease-in-out">
    <div class="px-4 py-4 border-b border-[#5a7a95]">
        <h1 class="text-white font-extrabold text-lg leading-tight select-none">
            Sistem Presensi Online
        </h1>
    </div>
    <div class="px-4 py-3 border-b border-[#5a7a95]">
        <p class="text-white font-semibold text-sm select-none">
            Menu Utama
        </p>
    </div>
    <nav class="flex flex-col text-sm font-normal">
        <a href="{{ route('home.index') }}"
           class="px-4 py-3 border-b border-[#5a7a95] select-none transition-all duration-200
                  {{ request()->is('home') ? 'bg-white text-black font-semibold' : 'text-white hover:bg-[#5a7a95]' }}">
            Dashboard
        </a>

        <a href="{{ route('presensi.index') }}"
           class="px-4 py-3 border-b border-[#5a7a95] select-none transition-all duration-200
                  {{ request()->is('presensi*') ? 'bg-white text-black font-semibold' : 'text-white hover:bg-[#5a7a95]' }}">
            Presensi Siswa
        </a>

        <a href="{{ route('riwayat.index') }}"
           class="px-4 py-3 border-b border-[#5a7a95] select-none transition-all duration-200
                  {{ request()->is('riwayat*') ? 'bg-white text-black font-semibold' : 'text-white hover:bg-[#5a7a95]' }}">
            Riwayat Presensi
        </a>

        <a href="{{ route('rekap.index') }}"
           class="px-4 py-3 border-b border-[#5a7a95] select-none transition-all duration-200
                  {{ request()->is('rekap*') ? 'bg-white text-black font-semibold' : 'text-white hover:bg-[#5a7a95]' }}">
            Rekap Data Presensi
        </a>
    </nav>
</aside>
