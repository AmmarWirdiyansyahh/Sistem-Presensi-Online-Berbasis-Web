<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    protected $table = 'kelas';
    protected $primaryKey = 'id';

    protected $fillable = [
        'nama_kelas',
    ];

    // relasi ke mahasiswa/siswa
    public function siswa()
    {
        return $this->hasMany(Siswa::class, 'id_kelas'); // asumsikan relasi
    }

    // relasi ke jadwal
    public function jadwal()
    {
        return $this->hasMany(Jadwal::class, 'id_kelas');
    }
}
