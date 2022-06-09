<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Baby extends Model {
    use HasFactory;
    protected $fillable = [
        'nama',
        'no_kms',
        'nik_bayi',
        'id_parent',
        'tempat_lahir',
        'tanggal_lahir',
        'anak_ke',
        'jenis_kelamin',
        'golongan_darah',
        'panjang_bayi',
        'berat_bayi',
        'lingkar_kepala',
    ];

    public function progressBaby(){
        return $this->hasMany(ProgressBaby::class);
    }

    public function parents() {
        return $this->belongsTo(Parents::class, 'id_parent', 'id');
    }

    public function immunization() {
        return $this->hasMany(Immunization::class, 'id_baby', 'id');
    }
}
