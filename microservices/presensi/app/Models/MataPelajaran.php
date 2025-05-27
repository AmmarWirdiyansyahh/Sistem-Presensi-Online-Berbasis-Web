<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MataPelajaran extends Model
{
    protected $table = 'mapel'; // nama tabel
    protected $primaryKey = 'id';

    protected $fillable = [
        'judul_mapel',
        'pengajar', // optional
    ];

    public function jadwal()
    {
        return $this->hasMany(Jadwal::class, 'id_mapel');
    }
}
