<?php

namespace App\Exports;

use App\Models\Vaccine;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;

class VaccineExport implements FromView
{
    public function view(): View
    {
        return view('exports.vaccine', [
            'vaccines' => Vaccine::all(),
            'title' => 'Vaccine Export'
        ]);
    }
}
