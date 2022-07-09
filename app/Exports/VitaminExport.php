<?php

namespace App\Exports;

use App\Models\Vitamin;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;

class VitaminExport implements FromView
{
    /**
    * @return \Illuminate\Support\View
    */
    public function view() : View
    {
        return view('exports.vitamin', [
            'vitamins' => Vitamin::all(),
            'title' => 'Vitamins Export',
            'date' => Carbon::now()
        ]);
    }
}
