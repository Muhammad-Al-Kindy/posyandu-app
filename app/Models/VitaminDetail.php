<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VitaminDetail extends Model
{
    use HasFactory;

    protected $table = 'vitamin_detail';
    protected $fillable = [
        'vitamin_id', 'start_age', 'end_age', 'information'
    ];

    public function vitamin(){
        return $this->belongsTo(Vitamin::class, 'id', 'vitamin_id');
    }
}
