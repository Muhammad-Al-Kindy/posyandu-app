<?php

namespace App\Exports;

use Carbon\Carbon;
use App\Models\Baby;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportBabiesData implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View {
        return view('exports.babies', [
            'babies' => Baby::all(),
            'date' => Carbon::now()
        ]);
    }
}
