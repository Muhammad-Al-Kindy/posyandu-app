<?php

namespace App\Exports;

use Carbon\Carbon;
use App\Models\Baby;
use App\Models\ProgressBaby;
use Illuminate\Support\Facades\DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class BabiesExport implements FromView {
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View {
        $progress = DB::table('babies AS b')
            ->join('progress_babies AS p', 'b.id', '=', 'p.id_bayi')
            ->join('parents AS pr', 'b.id_parent', '=', 'pr.id')
            ->select('b.nik_bayi AS nik','b.nama AS nama', 'pr.no_hp AS no_hp', 'pr.nama_ibu AS nama_ibu', 'pr.nama_ayah',
            'b.tempat_lahir', 'b.tanggal_lahir AS tanggal_lahir', 'b.anak_ke', 'pr.alamat AS alamat', 'b.jenis_kelamin AS jenis_kelamin',
            'b.golongan_darah', 'p.id_bayi', 'p.bulan_ke AS bulan_ke', 'p.panjang_bayi AS panjang_bayi', 'p.berat_bayi AS berat_bayi', 'p.lingkar_kepala')
            ->max('p.bulan_ke');

        return view('exports.babies', [
            'progress' => ProgressBaby::with('baby')->where('bulan_ke', $progress)->get(),
            'title' => 'Babies Export',
            'date' => Carbon::now()
        ]);
    }
}
