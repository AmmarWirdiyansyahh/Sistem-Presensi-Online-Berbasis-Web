<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <title>Sistem Presensi Online</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter&display=swap');
        body {
            font-family: 'Inter', sans-serif;
        }
        .scrollbar-hide::-webkit-scrollbar {
            display: none;
        }
        .scrollbar-hide {
            -ms-overflow-style: none;
            scrollbar-width: none;
        }

        #mainContent {
            transition: margin-left 0.5s ease-in-out;

        }

        #sidebar {
            transition: transform 0.3s ease;
        }

        #sidebar.hidden {
            transform: translateX(-100%);
        }

        #mainContent.full {
            margin-left: 0;
        }


        .kehadiran-option {
            color: black;
        }
        .hadir {
            background-color: #d4edda !important;
            color: #155724 !important;
        }
        .izin {
            background-color: #d1ecf1 !important;
            color: #0c5460 !important;
        }
        .sakit {
            background-color: #fff3cd !important;
            color: #856404 !important;
        }
        .alpha {
            background-color: #f8d7da !important;
            color: #721c24 !important;
        }
        .status-hadir {
            background-color: #d4edda;
            color: #155724;
            font-weight: bold;
        }

        .status-izin {
            background-color: #d1ecf1;
            color: #0c5460;
            font-weight: bold;
        }

        .status-sakit {
            background-color: #fff3cd;
            color: #856404;
            font-weight: bold;
        }

        .status-alpha {
            background-color: #f8d7da;
            color: #721c24;
            font-weight: bold;
        }
    </style>
</head>
<body class="bg-white overflow-x-hidden">
    <div class="flex min-h-screen">
        @include('layouts.navbar')

        <div id="mainContent" class="flex-1 flex flex-col ml-[280px] transition-all duration-500 ease-in-out">
            <header class="flex items-center justify-between bg-[#7DB0D6] px-4 h-14">
                <button aria-label="Toggle Menu" id="menuToggle" class="text-black text-2xl focus:outline-none">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="relative">
                    <button id="profileToggle" aria-label="User Profile"
                        class="bg-white rounded-full w-9 h-9 flex items-center justify-center focus:outline-none">
                        <i class="fas fa-user text-black text-lg"></i>
                    </button>

                    <div id="profileMenu"
                        class="absolute right-0 mt-2 w-32 bg-white rounded shadow-lg py-2 hidden z-50">
                        <form method="POST" action="{{ route('logout') }}" id="logout-form">
                            @csrf
                            <button type="button" id="logout-button"
                                class="block w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                Logout
                            </button>

                        </form>
                    </div>
                </div>

            </header>
            <div class="bg-[#D9EDF9] px-6 py-3 text-sm text-[#1a1a1a] select-none">
                @yield('breadcrumb')
            </div>
            <main class="p-6 overflow-auto">
                @yield('content')
            </main>
        </div>
    </div>
    @yield('scripts')
    <script>
        const sidebar = document.getElementById('sidebar');
        const mainContent = document.getElementById('mainContent');
        const menuToggle = document.getElementById('menuToggle');

        let sidebarVisible = true;

        function showSidebar() {
            sidebar.classList.remove('hidden');
            mainContent.classList.remove('full');
            mainContent.style.marginLeft = '280px';
            sidebarVisible = true;
        }

        function hideSidebar() {
            sidebar.classList.add('hidden');
            mainContent.classList.add('full');
            mainContent.style.marginLeft = '0';
            sidebarVisible = false;
        }

        menuToggle.addEventListener('click', () => {
            if (sidebarVisible) {
                hideSidebar();
            } else {
                showSidebar();
            }
        });

        window.addEventListener('load', () => {
            showSidebar();
        });
    </script>
    <script>
        const profileToggle = document.getElementById('profileToggle');
        const profileMenu = document.getElementById('profileMenu');

        profileToggle?.addEventListener('click', () => {
            profileMenu.classList.toggle('hidden');
        });

        // Optional: hide menu if clicked outside
        window.addEventListener('click', (e) => {
            if (!profileToggle.contains(e.target) && !profileMenu.contains(e.target)) {
                profileMenu.classList.add('hidden');
            }
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const logoutBtn = document.getElementById('logout-button');
        const logoutForm = document.getElementById('logout-form');

        if (logoutBtn && logoutForm) {
            logoutBtn.addEventListener('click', function (e) {
                e.preventDefault();
                Swal.fire({
                    title: 'Yakin ingin logout?',
                    text: "Kamu akan keluar dari sistem.",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Ya, Logout!',
                    cancelButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        logoutForm.submit();
                    }
                });
            });
        }
    });
</script>


</body>
</html>
