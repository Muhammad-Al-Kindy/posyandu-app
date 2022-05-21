<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Immunization extends Model
{
    use HasFactory;

    protected $table = 'immunization';
    protected $guarded = ['id'];

    public function baby() {
        return $this->belongsTo(Baby::class, 'id_baby', 'id');
    }

    public function vaccine() {
        return $this->belongsTo(Vaccine::class, 'id_vaccine', 'id');
    }
}
