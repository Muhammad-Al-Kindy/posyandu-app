<?php

namespace App\Exports;

use App\Models\Baby;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;

class BabiesExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View 
    {
        return view('exports.babies', [
            'babies' => Baby::with('parents')->get(),
            'title' => 'Babies Export'
        ]);
    }
}
