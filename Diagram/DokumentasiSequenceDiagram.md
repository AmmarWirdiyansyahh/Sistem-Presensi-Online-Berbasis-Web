# Dokumentasi Sequence Diagram

![Sequence Diagram](https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web/blob/main/Diagram/Sequence%20Diagram.png)

# Aktor

- **Guru**

# Komponen Utama

- **Sistem Presensi**
- **Database**

# Penjelasan Alur

## 1. Proses Login
- Guru membuka aplikasi presensi.
- Sistem menampilkan form login.
- Guru memasukkan username dan password.
- Sistem memvalidasi kredensial ke database.
- Setelah validasi berhasil, sistem menampilkan menu kelas dan mata pelajaran.

## 2. Pemilihan Jadwal
- Guru memilih kelas dan mata pelajaran.
- Sistem mengambil data jadwal dan daftar siswa dari database.
- Data jadwal dan siswa ditampilkan pada form presensi.

## 3. Proses Presensi
- Guru mengisi kehadiran siswa satu per satu, dengan pilihan hadir/tidak hadir dan keterangan.
- Setiap data presensi disimpan sementara ke database.
- Setelah semua siswa diisi, guru menekan tombol "Simpan Presensi".
- Sistem menyimpan seluruh data presensi ke database.
- Sistem menampilkan notifikasi bahwa presensi telah selesai.

# Ringkasan

Sequence diagram ini menggambarkan alur interaksi antara Guru, Sistem Presensi, dan Database dalam proses presensi online. Diagram ini menjelaskan bagaimana guru melakukan login, memilih jadwal, dan mengisi kehadiran siswa, yang seluruh datanya akan tersimpan ke dalam sistem secara otomatis dan terstruktur.

