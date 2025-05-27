<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
        {
            // Seed Guru
            DB::table('guru')->insert([
                ['nama' => 'Andi', 'nip' => '12345' ,'created_at' => now(),'updated_at' => now()],
                ['nama' => 'Budi', 'nip' => '67899', 'created_at' => now(),'updated_at' => now()],
                ['nama' => 'Citra','nip' => '32198', 'created_at' => now(),'updated_at' => now()],
                ['nama' => 'Andin','nip' => '11111', 'created_at' => now(),'updated_at' => now()]

            ]);

            // Seed Mapel dan relasi ke guru
            // Asumsikan guru ID: Andi=1, Budi=2, Citra=3
            DB::table('mapel')->insert([
                ['judul_mapel' => 'Matematika', 'pengajar' => 'Andi', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Bahasa Inggris', 'pengajar' => 'Budi', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Sejarah', 'pengajar' => 'Citra', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Fisika', 'pengajar' => 'Dedi', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Kimia', 'pengajar' => 'Eka', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Biologi', 'pengajar' => 'Fani', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Ekonomi', 'pengajar' => 'Gilang', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Sosiologi', 'pengajar' => 'Hani', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Geografi', 'pengajar' => 'Indra', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Bahasa Indonesia', 'pengajar' => 'Joko', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Seni Budaya', 'pengajar' => 'Kiki', 'created_at' => now(), 'updated_at' => now()],
                ['judul_mapel' => 'Penjaskes', 'pengajar' => 'Lina', 'created_at' => now(), 'updated_at' => now()],
            ]);

            DB::table('kelas')->insert([
                ['nama_kelas' => 'XII IPA 1', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPA 2', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPA 3', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPA 4', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPA 5', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPS 1', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPS 2', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPS 3', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII IPS 4', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII Bahasa', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII Agama', 'created_at' => now(), 'updated_at' => now()],
                ['nama_kelas' => 'XII Multikultural', 'created_at' => now(), 'updated_at' => now()],
            ]);

            DB::table('siswa')->insert([
                // Kelas 1 (id_kelas=1)
                ['id_kelas' => 1, 'nama' => 'Andi Pratama', 'nis' => 'NIS001', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Budi Santoso', 'nis' => 'NIS002', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Cici Aprilia', 'nis' => 'NIS003', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Dedi Sulaeman', 'nis' => 'NIS004', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Eni Suryani', 'nis' => 'NIS005', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Feri Rahman', 'nis' => 'NIS006', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Gita Lestari', 'nis' => 'NIS007', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Hana Yuliana', 'nis' => 'NIS008', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Iwan Kurniawan', 'nis' => 'NIS009', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 1, 'nama' => 'Joko Susanto', 'nis' => 'NIS010', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],

                // Kelas 2 (id_kelas=2)
                ['id_kelas' => 2, 'nama' => 'Lena Maharani', 'nis' => 'NIS011', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Miko Prasetyo', 'nis' => 'NIS012', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Nia Wulandari', 'nis' => 'NIS013', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Oki Susilo', 'nis' => 'NIS014', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Putri Ayu', 'nis' => 'NIS015', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Qudsia Fadila', 'nis' => 'NIS016', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Roni Maliki', 'nis' => 'NIS017', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Sari Melati', 'nis' => 'NIS018', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Tio Pratama', 'nis' => 'NIS019', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 2, 'nama' => 'Uli Sari', 'nis' => 'NIS020', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],

                // Kelas 3 (id_kelas=3)
                ['id_kelas' => 3, 'nama' => 'Vika Sustri', 'nis' => 'NIS021', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Wawan Satryo', 'nis' => 'NIS022', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Yani Permata', 'nis' => 'NIS023', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Zack Pratama', 'nis' => 'NIS024', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Agnes Lestari', 'nis' => 'NIS025', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Benny Suryadi', 'nis' => 'NIS026', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Citra Ananda', 'nis' => 'NIS027', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Dedi Purnama', 'nis' => 'NIS028', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Eko Ramadhan', 'nis' => 'NIS029', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(),'updated_at' => now()],
                ['id_kelas' => 3, 'nama' => 'Fina Sari', 'nis' => 'NIS030', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(),'updated_at' => now()],

                //Kelas 4 (id_kelas=4)
                ['id_kelas' => 4, 'nama' => 'Andi Pratama', 'nis' => 'NIS031', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Eni Santoso', 'nis' => 'NIS032', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS033', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS034', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Iwan Suryani', 'nis' => 'NIS035', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Nia Rahman', 'nis' => 'NIS036', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Miko Lestari', 'nis' => 'NIS037', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Sari Yuliana', 'nis' => 'NIS038', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS039', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 4, 'nama' => 'Vika Susanto', 'nis' => 'NIS040', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],

                //Kelas 5
                ['id_kelas' => 5, 'nama' => 'Andi Pratama', 'nis' => 'NIS041', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Eni Santoso', 'nis' => 'NIS042', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS043', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS044', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Iwan Suryani', 'nis' => 'NIS045', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Nia Rahman', 'nis' => 'NIS046', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Miko Lestari', 'nis' => 'NIS047', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Sari Yuliana', 'nis' => 'NIS048', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS049', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 5, 'nama' => 'Vika Susanto', 'nis' => 'NIS050', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],

                //Kelas 6
                ['id_kelas' => 6, 'nama' => 'Andi Pratama', 'nis' => 'NIS051', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Eni Santoso', 'nis' => 'NIS052', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS053', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS054', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Iwan Suryani', 'nis' => 'NIS055', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Nia Rahman', 'nis' => 'NIS056', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Miko Lestari', 'nis' => 'NIS057', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Sari Yuliana', 'nis' => 'NIS058', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS059', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 6, 'nama' => 'Vika Susanto', 'nis' => 'NIS060', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                //Kelas 7
                ['id_kelas' => 7, 'nama' => 'Andi Pratama', 'nis' => 'NIS061', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Eni Santoso', 'nis' => 'NIS062', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS063', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS064', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Iwan Suryani', 'nis' => 'NIS065', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Nia Rahman', 'nis' => 'NIS066', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Miko Lestari', 'nis' => 'NIS067', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Sari Yuliana', 'nis' => 'NIS068', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS069', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 7, 'nama' => 'Vika Susanto', 'nis' => 'NIS070', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                //Kelas 8
                ['id_kelas' => 8, 'nama' => 'Andi Pratama', 'nis' => 'NIS071', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Eni Santoso', 'nis' => 'NIS072', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS073', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS074', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Iwan Suryani', 'nis' => 'NIS075', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Nia Rahman', 'nis' => 'NIS076', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Miko Lestari', 'nis' => 'NIS077', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Sari Yuliana', 'nis' => 'NIS078', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS079', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 8, 'nama' => 'Vika Susanto', 'nis' => 'NIS080', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                //Kelas 9
                ['id_kelas' => 9, 'nama' => 'Andi Pratama', 'nis' => 'NIS081', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Eni Santoso', 'nis' => 'NIS082', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS083', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS084', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Iwan Suryani', 'nis' => 'NIS085', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Nia Rahman', 'nis' => 'NIS086', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Miko Lestari', 'nis' => 'NIS087', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Sari Yuliana', 'nis' => 'NIS088', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS089', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 9, 'nama' => 'Vika Susanto', 'nis' => 'NIS090', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                //Kelas 10
                ['id_kelas' => 10, 'nama' => 'Andi Pratama', 'nis' => 'NIS091', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Eni Santoso', 'nis' => 'NIS092', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS093', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS094', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Iwan Suryani', 'nis' => 'NIS095', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Nia Rahman', 'nis' => 'NIS096', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Miko Lestari', 'nis' => 'NIS097', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Sari Yuliana', 'nis' => 'NIS098', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS099', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 10, 'nama' => 'Vika Susanto', 'nis' => 'NIS100', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                //Kelas 11
                ['id_kelas' => 11, 'nama' => 'Andi Pratama', 'nis' => 'NIS101', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Eni Santoso', 'nis' => 'NIS102', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS103', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS104', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Iwan Suryani', 'nis' => 'NIS105', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Nia Rahman', 'nis' => 'NIS106', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Miko Lestari', 'nis' => 'NIS107', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Sari Yuliana', 'nis' => 'NIS108', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS109', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 11, 'nama' => 'Vika Susanto', 'nis' => 'NIS110', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                //Kelas 12 
                ['id_kelas' => 12, 'nama' => 'Andi Pratama', 'nis' => 'NIS111', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Eni Santoso', 'nis' => 'NIS112', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Dedi Aprilia', 'nis' => 'NIS113', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Hana Sulaeman', 'nis' => 'NIS114', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Iwan Suryani', 'nis' => 'NIS115', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Nia Rahman', 'nis' => 'NIS116', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Miko Lestari', 'nis' => 'NIS117', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Sari Yuliana', 'nis' => 'NIS118', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Roni Kurniawan', 'nis' => 'NIS119', 'jenis_kelamin' => 'Laki-laki', 'created_at' => now(), 'updated_at' => now()],
                ['id_kelas' => 12, 'nama' => 'Vika Susanto', 'nis' => 'NIS120', 'jenis_kelamin' => 'Perempuan', 'created_at' => now(), 'updated_at' => now()],
            ]);

            // Seed Jadwal menyesuaikan guru pengampu
            // Ambil ID Mapel dan Guru berdasarkan urutan data di atas
          
            $this->call(JadwalKelasSeeder::class);




            User::create([
                'name' => 'Andin', 
                'email' => 'andin@smpsemparuk.ac.id', 
                'password' => Hash::make('andin'), // Password: password123 
            ]);
        }

       
        // User::factory(10)->create();

        //User::factory()->create([
        //    'name' => 'Test User',
        //    'email' => 'test@example.com',
        //]);
    
}
