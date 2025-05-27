<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('presensi', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_jadwal'); // relasi ke jadwal
            $table->unsignedBigInteger('id_siswa'); // relasi ke siswa
            $table->enum('status', ['Hadir', 'Sakit', 'Izin', 'Alpha'])->default('Hadir');
            $table->timestamp('waktu')->useCurrent();

            // foreign keys
            $table->foreign('id_jadwal')->references('id')->on('jadwal')->onDelete('cascade');
            $table->foreign('id_siswa')->references('id')->on('siswa')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('presensi');
    }
};
