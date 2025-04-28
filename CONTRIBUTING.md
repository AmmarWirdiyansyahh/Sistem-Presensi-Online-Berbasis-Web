# 📋 Pedoman Kontribusi GitHub Tim

## Persiapan Sebelum Mulai
- Install **Git** dan **VSCode**.
- Clone repository ke laptop.

## Workflow Kerja
1. **Sebelum kerja:** Selalu tarik perubahan terbaru
    ```bash
    git pull origin main
    ```
2. **Kerjakan tugas:** Tambah, edit, atau hapus file.
3. **Simpan perubahan:**
    ```bash
    git add .
    git commit -m "Deskripsi perubahan"
    ```
4. **Push ke GitHub:**
    ```bash
    git push origin main
    ```

## Format Pesan Commit
- Tambah file: `Menambahkan halaman presensi`
- Update file: `Update validasi form presensi`
- Hapus file: `Menghapus file error lama`

## Catatan Penting
- Jangan push file yang tidak perlu (`node_modules/`, `vendor/`, dll).
- Komunikasikan perubahan besar ke tim sebelum push.
