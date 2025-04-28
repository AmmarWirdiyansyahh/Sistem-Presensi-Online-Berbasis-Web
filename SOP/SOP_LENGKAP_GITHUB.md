
# SOP Lengkap Penggunaan Git dan GitHub untuk Tim

## Folder dan PIC
| Folder | File yang harus ada | PIC |
|:-------|:--------------------|:----|
| SPK | Dokumen Surat Perjanjian Kerjasama (SPK) | PM & QA Tester |
| Diagram | User Flowchart Diagram + Data Flow Diagram | Frontend & Backend |
| SOP | SOP penggunaan GitHub | DevOps |
| frontend | (File Front-End: HTML/CSS/JS) | Frontend |
| backend | (File Back-End: Laravel API) | Backend |
| microservices | Modul spesifik, contoh presensi-siswa | Frontend & Backend |

---

# 📚 Deskripsi

Dokumen ini dibuat untuk membantu seluruh anggota tim yang **belum pernah** menggunakan Git dan GitHub sama sekali. Berisi panduan lengkap dari **install Git**, **setup**, **git clone**, **git remote**, **git pull**, **git add**, **git commit**, hingga **git push**. Termasuk aturan commit wajib.

Project: **Sistem Presensi Online Berbasis Web**

Divisi PIC: **DevOps**

---

# 1. Instalasi Git

1. Buka: [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Download untuk Windows (atau OS sesuai laptop).
3. Install Git dengan pengaturan default.
4. Pastikan **Git Bash** tersedia di Desktop.

✅ Git siap digunakan.

---

# 2. Setup Git Pertama Kali (Wajib)

Buka **Git Bash**, lalu jalankan:

```bash
git config --global user.name "Nama Kamu"
git config --global user.email "emailkamu@email.com"
```

✅ Ini hanya perlu dilakukan **sekali** di laptop masing-masing.

---

# 3. Clone Project dari GitHub

Clone repository ke laptop:

```bash
git clone https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git
cd Sistem-Presensi-Online-Berbasis-Web
git init
git remote add origin https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git
```

✅ Project sudah ada di lokal.

---

# 4. Cek Git Remote

```bash
git remote -v
```

Output yang diharapkan:

```
origin  https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git (fetch)
origin  https://github.com/AmmarWirdiyansyahh/Sistem-Presensi-Online-Berbasis-Web.git (push)
```

✅ Repository sudah terkoneksi.

---

# 5. Workflow Harian Tim

**Sebelum kerja:**

```bash
git pull origin main
```

**Setelah kerja:**

```bash
git add .
git commit -m "(lihat aturan commit)"
git push origin main
```

---

# 6. Cara Menambah dan Menghapus File

**Menambah file baru ke folder:**

```bash
mkdir nama-folder
# buat file baru
touch nama-folder/nama-file.ext
# atau buat manual lalu:
git add .
git commit -m "feat: menambahkan <nama file> pada <folder>"
git push origin main
```

**Menghapus file atau folder:**

```bash
# hapus file
git rm nama-folder/nama-file.ext

# hapus folder
git rm -r nama-folder/

# commit dan push
git commit -m "chore: menghapus <nama file/folder>"
git push origin main
```

---

# 7. Aturan Commit Wajib Tim (Ditetapkan oleh DevOps)

Seluruh commit **WAJIB** menggunakan format berikut:

| Jenis Perubahan | Format Commit |
|:----------------|:--------------|
| Menambah file | `feat: menambahkan <nama file> pada <folder>` |
| Menghapus file/folder | `chore: menghapus <nama file/folder>` |
| Memperbaiki bug | `fix: memperbaiki <deskripsi bug> di <file>` |
| Update minor file | `update: update isi <nama file>` |
| Perubahan struktur besar | `refactor: refactor struktur <folder/file>` |

**Contoh commit valid:**
- `feat: menambahkan halaman login.html pada folder frontend`
- `chore: menghapus file lama login_old.html`
- `fix: memperbaiki bug validasi email di register.js`
- `update: update flowchart diagram di Diagram/userflow.png`
- `refactor: refactor struktur folder backend`

✅ Commit asal-asalan akan ditolak.

---

# 8. Penanganan Error Umum

Jika error saat `git push`, lakukan:

```bash
git pull origin main
# Jika ada konflik, selesaikan, lalu:
git add .
git commit -m "resolve conflict"
git push origin main
```

✅ Selesaikan konflik lokal sebelum push ulang.

---

# 9. Alur Kerja Harian Standar

```bash
cd Sistem-Presensi-Online-Berbasis-Web
git pull origin main
# (kerjakan perubahan)
git add .
git commit -m "(mengikuti aturan commit)"
git push origin main
```

---

# 🔥 Contoh Kasus Full

**Menambah file baru:**

```bash
git pull origin main
touch frontend/absensi.html
git add frontend/absensi.html
git commit -m "feat: menambahkan halaman absensi.html pada folder frontend"
git push origin main
```

**Menghapus file:**

```bash
git pull origin main
git rm frontend/old-absensi.html
git commit -m "chore: menghapus file old-absensi.html dari folder frontend"
git push origin main
```

✅ File di GitHub akan otomatis terupdate.

---

# 📣 Catatan Penting

- **Selalu `git pull` sebelum mulai kerja.**
- **Selalu `git push` setelah selesai kerja.**
- **Gunakan format commit sesuai aturan DevOps.**
- **Koordinasikan bila ada perubahan besar.**
- **Jangan upload file yang tidak penting seperti `node_modules/`, `vendor/`, atau file `.log`.**

---

# ✅ Penutup

Dengan mengikuti SOP ini, seluruh anggota tim — bahkan yang benar-benar baru pertama kali menggunakan GitHub — bisa berkontribusi dengan aman, rapi, dan terstruktur.

Selamat berkontribusi, dan tetap semangat! 🚀✨
