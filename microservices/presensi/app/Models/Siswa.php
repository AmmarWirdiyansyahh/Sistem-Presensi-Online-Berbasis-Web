<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    protected $table = 'siswa';
    protected $primaryKey = 'id';

    protected $fillable = [
        'id_kelas',
        'nama',
        'nis',
        'jenis_kelamin',
    ];

    // Relasi ke Kelas
    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas');
    }

    // Relasi ke presensi
    public function presensi()
    {
        return $this->hasMany(Presensi::class, 'id_siswa');
    }
}
