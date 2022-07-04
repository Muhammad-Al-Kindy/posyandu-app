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
    ];

    public function vitaminizations() {
        return $this->hasMany(Vitaminization::class);
    }
}
