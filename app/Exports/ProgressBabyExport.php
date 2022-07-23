<?php

namespace App\Exports;
use Carbon\Carbon;
use App\Models\Baby;
use App\Models\ProgressBaby;
use Illuminate\Support\Facades\DB;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ProgressBabyExport implements FromView {
    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View {
        request()->validate([
            'month' => 'required',
            'year' => 'required',
        ]);
        $progress = Baby::with('parents')->whereMonth('created_at', '=', request()->month)
        ->whereYear('created_at', '=', request()->year)
        ->get();
        $month = request()->month;
        $monthName = date("F", mktime(0, 0, 0, $month, 10));
        return view('exports.progress', [
            'progress' => $progress,
            'title' => 'Progress Baby Export by Month',
            'date' => Carbon::now(),
            'month' => $monthName,
            'year' => request()->year,
        ]);
    }
}
