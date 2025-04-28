Dokumentasi Data Flow Diagram (DFD)

![DFD](
https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web/blob/main/Diagram/DFD.png)

Entitas Eksternal

Admin

Guru

Proses

Sistem Presensi Online SMP Semparuk, Sambas

Data Store

Database

Penjelasan Alur

Admin ↔ Database

Mengirim Data: Admin menginput data kelas, mata pelajaran, siswa, dan guru ke dalam sistem.

Input Data: Data yang sudah dikirim akan masuk dan tersimpan ke dalam database.

Database ↔ Sistem Presensi

Menyinkronkan Database dan Sistem: Sistem presensi online membaca dan mengambil data dari database agar dapat digunakan dalam proses presensi.

Guru ↔ Sistem Presensi

Melakukan Presensi: Guru mengakses sistem untuk melakukan presensi kehadiran.

Info Presensi: Sistem memberikan informasi presensi yang sudah dicatat dan tersimpan.

Sistem Presensi ↔ Database

Menyimpan Data Presensi: Data presensi yang dilakukan oleh guru dikirimkan ke database untuk disimpan.

Ringkasan

Diagram ini menggambarkan alur kerja utama dari sistem presensi online di SMP Semparuk, Sambas, melibatkan interaksi antara admin, guru, sistem presensi, dan database. Admin bertugas mengelola data awal, guru bertugas melakukan presensi, sementara sistem bertugas menyinkronkan dan menyimpan semua informasi ke dalam database.