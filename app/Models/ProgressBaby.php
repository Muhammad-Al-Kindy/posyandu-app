<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProgressBaby extends Model {
    use HasFactory;

    protected $fillable = [
      'id_bayi',
      'bulan_ke',
      'lingkar_kepala',
      'panjang_bayi',
      'berat_bayi'
    ];

    public function baby() {
        return $this->belongsTo(Baby::class, 'id_bayi', 'id');
    }
}
