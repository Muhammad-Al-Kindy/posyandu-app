<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ExportBabiesData;
use Carbon\Carbon;

class ExportController extends Controller
{
    public function export_excel() {
        return Excel::download(new ExportBabiesData, 'data_bayi.xlsx');
    }
}
