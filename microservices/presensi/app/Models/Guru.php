<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    protected $table = 'guru'; // nama tabel
    protected $primaryKey = 'id';

    protected $fillable = [
        'nama',
        'nip',
    ];

    public function jadwal()
    {
        return $this->hasMany(Jadwal::class, 'id_guru');
    }
}
