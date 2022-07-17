<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vitamin extends Model {
    use HasFactory;
    protected $table = 'vitamin';
    protected $fillable = [
        'name',
        'description',
        'start_range_age',
        'end_range_age'
    ];

    public function vitaminizations() {
        return $this->hasMany(Vitaminization::class);
    }

    public function vitamin_detail(){
        return $this->hasMany(VitaminDetail::class, 'vitamin_id', 'id');
    }
}
