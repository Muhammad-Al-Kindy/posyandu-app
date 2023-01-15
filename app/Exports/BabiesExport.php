<?php

namespace App\Exports;

use Carbon\Carbon;
use App\Models\ProgressBaby;
use Illuminate\Support\Facades\DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class BabiesExport implements FromView {
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View {
        $exportData = DB::table('babies AS b')
        ->join('parents AS p', 'b.id_parent', 'p.id')
        ->select('b.nik_bayi AS nik_bayi', 'b.nama AS nama', 'b.tanggal_lahir AS tanggal_lahir',
        'b.jenis_kelamin AS jenis_kelamin', 'p.nama_ibu AS nama_ibu', 'p.alamat AS alamat',
        'p.no_hp AS no_hp')
        ->get();

        return view('exports.babies', [
            'export' => $exportData,
            'title' => 'Babies Export',
            'date' => Carbon::now()
        ]);
    }
}
