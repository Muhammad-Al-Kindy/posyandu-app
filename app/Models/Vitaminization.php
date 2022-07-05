<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vitaminization extends Model {
    use HasFactory;
    protected $table = 'vitaminization';
    protected $guarded = ['id'];

    public function baby() {
        return $this->belongsTo(Baby::class, 'id_baby');
    }

    public function vitamin() {
        return $this->belongsTo(Vitamin::class, 'id_vitamin');
    }
}
