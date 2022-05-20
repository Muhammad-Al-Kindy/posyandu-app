<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Parents extends Model {
    use HasFactory;

    protected $primaryKey = 'id';

    protected $fillable = [
        'nama_ibu',
        // 'nik_ibu',
        'pekerjaan_ibu',
        'nama_ayah',
        'pekerjaan_ayah',
        'alamat'
    ];

    public function baby() {
        return $this->hasMany(Baby::class);
    }
}
