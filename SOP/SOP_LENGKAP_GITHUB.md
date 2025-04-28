# SOP Lengkap Penggunaan Git dan GitHub untuk Tim
Folder;File yang harus ada;PIC
1. SPK;Dokumen Surat Perjanjian Kerjasama (SPK);PM & QA Tester
2. Diagram;User Flowchart Diagram + Data Flow Diagram;Frontend & Backend
3. SOP;SOP penggunaan GitHub;Kamu (DevOps)
4. frontend;(Nanti file Front-End: HTML/CSS/JS);Frontend
5. backend;(Nanti file Back-End: Laravel API);Backend
6. microservices;Modul spesifik, contoh presensi-siswa;Frontend + Backend

## 📚 Deskripsi

Dokumen ini dibuat untuk membantu seluruh anggota tim yang **belum pernah** menggunakan Git dan GitHub sama sekali.  
Isinya panduan lengkap dari **install Git**, **setup**, **git clone**, **git remote**, **git pull**, **git add**, **git commit**, hingga **git push**.  

Project: **Sistem Presensi Online Berbasis Web**  
Divisi PIC: **DevOps**  

---

## 1. Instalasi Git

1. Buka: [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Download untuk Windows (atau OS sesuai laptop).
3. Install Git ➔ klik Next terus sampai selesai ➔ gunakan pengaturan default.
4. Pastikan **Git Bash** tersedia di Desktop.

✅ Git sudah siap digunakan.

---

## 2. Setup Git Pertama Kali (Wajib)

Buka **Git Bash**, lalu jalankan:

```bash
git config --global user.name "Nama Kamu"
git config --global user.email "emailkamu@email.com"
```

Contoh:

```bash
git config --global user.name "Ammar Wirdiyansyah"
git config --global user.email "ammar@example.com"
```

✅ Ini hanya perlu dilakukan **sekali** di laptop masing-masing.

---

## 3. Clone Project dari GitHub

Clone repository ke laptop:

```bash
git clone https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git
cd Sistem-Presensi-Online-Berbasis-Web
git init
git remote add origin https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git
```

✅ Sekarang project sudah ada di laptop.

---

## 4. Cek Git Remote

Pastikan koneksi ke GitHub sudah benar:

```bash
git remote -v
```

Output yang muncul harus seperti ini:

```
origin  https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git (fetch)
origin  https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git (push)
```

✅ Berarti repo sudah terhubung ke GitHub.

---

## 5. Workflow Harian Tim

**Sebelum mulai kerja ➔ Wajib tarik update terbaru:**

```bash
git pull origin main
```

✅ Untuk memastikan isi project lokal sesuai GitHub.

---

**Setelah selesai kerja ➔ Lakukan:**

```bash
git add .
git commit -m "Deskripsi perubahan"
git push origin main
```

✅ Semua perubahan akan terkirim ke GitHub.

---

## 6. Penjelasan Perintah Git

| Perintah | Fungsi |
|:---------|:-------|
| `git clone [link]` | Mengambil project dari GitHub |
| `git remote -v` | Melihat koneksi repo ke GitHub |
| `git pull origin main` | Mengambil update terbaru dari GitHub |
| `git add .` | Menambahkan semua perubahan file |
| `git commit -m "pesan"` | Menyimpan perubahan ke Git lokal |
| `git push origin main` | Mengirim perubahan ke GitHub |

---

## 7. Alur Kerja Harian Standar

```bash
cd Sistem-Presensi-Online-Berbasis-Web
git pull origin main
# (kerjakan perubahan)
git add .
git commit -m "deskripsi perubahan"
git push origin main
```

---

## 8. Penanganan Error Umum

Kalau error saat `git push`, lakukan:

```bash
git pull origin main
# Jika ada konflik, selesaikan, lalu:
git add .
git commit -m "resolve conflict"
git push origin main
```

✅ Selesaikan konflik lokal sebelum push ulang.

---

## 9. Aturan Tambahan

- **Selalu `git pull` sebelum kerja.**
- **Selalu `git push` setelah selesai kerja.**
- **Gunakan pesan commit yang rapi dan jelas.**
- **Koordinasikan kalau ada perubahan besar.**

---

# 🔥 Contoh Kasus Full

Misal: Membuat file baru `absensi.html`

```bash
git pull origin main
touch absensi.html
git add absensi.html
git commit -m "Menambahkan halaman absensi siswa"
git push origin main
```

✅ File `absensi.html` akan muncul di GitHub.

---

# 📣 Catatan Penting

- Semua file tugas harus disimpan dalam struktur folder:
  - `SPK/` ➔ Dokumen Surat Perjanjian Kerjasama.
  - `Diagram/` ➔ Flowchart Diagram & Data Flow Diagram.
  - `SOP/` ➔ Panduan penggunaan GitHub.

- Jangan upload file yang tidak penting seperti:
  - `node_modules/`
  - `vendor/`
  - file `.log`

---

# ✅ Penutup

Dengan mengikuti SOP ini, semua anggota tim — bahkan yang benar-benar **baru pertama kali** menggunakan GitHub — bisa berkontribusi tanpa masalah!

Selamat berkontribusi, dan tetap semangat! 🚀✨
