<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Baby;
use App\Models\ProgressBaby;
use Illuminate\Http\Request;
use App\Exports\ProgressBabyExport;
use Maatwebsite\Excel\Facades\Excel;

class ProgressBabyController extends Controller {

    public function index(){
        $month = [];
        for ($m=1; $m<=12; $m++) {
            $month[] = date('F', mktime(0,0,0,$m, 1, date('Y')));
        }
        $year = range(Carbon::now()->year, 1970);
        return view('progress-baby.index', compact('month', 'year'));
    }

    public function filter(Request $request) {
        $validated = $request->validate([
            'month' => 'required',
            'year' => 'required',
        ]);
        $progress = ProgressBaby::with('baby')->whereMonth('created_at', '=', $validated['month'])
        ->whereYear('created_at', '=', $validated['year'])
        ->get();
        $month = $validated['month'];
        $year = $validated['year'];

        return view('progress-baby.filter', compact('progress', 'month', 'year'));
    }

    public function export_excel() {
        return Excel::download(new ProgressBabyExport, 'progress '.Carbon::now().'.xlsx');
    }
}
