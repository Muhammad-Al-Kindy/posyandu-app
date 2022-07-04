<?php

namespace App\Exports;

use App\Models\Baby;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromCollection;

class BabiesExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection() {
        return DB::table('babies AS b')
                ->join('parents AS pr', 'b.id_parent', '=', 'pr.id')
                ->select('b.id', 'b.nama', 'pr.nama_ibu', 'pr.nama_ayah', 'b.tempat_lahir', 'b.tanggal_lahir', 'b.anak_ke', 'pr.alamat', 'b.jenis_kelamin', 'b.golongan_darah')
                ->get();
    }
}
