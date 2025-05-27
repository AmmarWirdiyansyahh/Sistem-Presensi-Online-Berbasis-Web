<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class JadwalKelasSeeder extends Seeder
{
    public function run()
    {
        $hariList = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
        $jamList = [
            ['jam_mulai' => '07:00:00', 'jam_selesai' => '08:30:00'],
            ['jam_mulai' => '08:30:00', 'jam_selesai' => '10:00:00'],
            ['jam_mulai' => '10:00:00', 'jam_selesai' => '11:30:00']
        ];

        $jadwal = [];
        $index = 0;

        foreach ($hariList as $hari) {
            foreach ($jamList as $slot) {
                $jadwal[] = [
                    'id_mapel' => ($index % 12) + 1,
                    'id_kelas' => (($index * 2) % 12) + 1,
                    'hari' => $hari,
                    'jam_mulai' => $slot['jam_mulai'],
                    'jam_selesai' => $slot['jam_selesai'],
                    'id_guru' => 4,
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now()
                ];
                $index++;
            }
        }

        DB::table('jadwal')->insert($jadwal);
    }
}
