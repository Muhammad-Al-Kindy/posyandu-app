<?php

namespace App\Exports;

use App\Models\Immunization;
use App\Models\Vaccine;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;

class ImmunizationExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view() : View
    {
        return view('exports.immunization', [
            'immunizations' => Immunization::all(),
            'vaccines' => Vaccine::all(),
            'title' => 'Immunizations Export',
        ]);
    }
}
