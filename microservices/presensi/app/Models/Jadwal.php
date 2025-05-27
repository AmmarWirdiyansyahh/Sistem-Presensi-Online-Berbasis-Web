<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Jadwal extends Model
{
    protected $table = 'jadwal'; // nama tabel
    protected $primaryKey = 'id';

    protected $fillable = [
        'id_mapel',
        'id_guru',
        'id_kelas',
        'hari',
        'jam_mulai',
        'jam_selesai',
    ];

    public function mapel()
    {
        return $this->belongsTo(MataPelajaran::class, 'id_mapel');
    }

    public function guru()
    {
        return $this->belongsTo(Guru::class, 'id_guru');
    }

    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas');
    }   

    public function presensi()
    {
        return $this->hasMany(Presensi::class, 'id_jadwal', 'id');
    }
}
