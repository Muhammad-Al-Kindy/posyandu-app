<?php

namespace App\Http\Controllers;

use App\Exports\VaccineExport;
use App\Models\Baby;
use App\Models\Immunization;
use App\Models\User;
use App\Models\Vaccine;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;

class VaccineController extends Controller
{
    public function index(Request $request) {
        $vaccines = Vaccine::orderBy('id', 'desc')->get();
        return view('vaccines.index', compact('vaccines'));
    }

    public function export_excel(){
        return Excel::download(new VaccineExport, 'vaccine '.Carbon::now().'.xlsx');
        // $title = 'Export Vaccine';
        // $vaccines = Vaccine::orderBy('id', 'desc')->get();
        // return view('exports.vaccine', compact('vaccines', 'title'));
    }

    public function create(){
        return view('vaccines.create');
    }

    public function unvaccinated($id){
        $vaccine = Vaccine::where('id', $id)->first();
        $babies = Baby::select('babies.id as id_bayi', 'babies.nama as nama_bayi', 'parents.*', 'vaccine.*', 'immunization.id_vaccine', DB::raw('COUNT(immunization.id_baby) as countID'))
                    ->join('parents', 'parents.id', '=', 'babies.id_parent')
                    ->leftJoin('immunization', 'immunization.id_baby', '=', 'babies.id')
                    ->leftJoin('vaccine', 'vaccine.id', '=', 'immunization.id_vaccine')
                    ->groupBy('id_bayi')
                    // ->whereNotNull('immunization.id_vaccine')
                    // ->where('immunization.id_vaccine', '==', $id)
                    ->get();
        // dd($babies);
        return view('immunizations.unvaccinated', compact('babies', 'vaccine'));
    }

    public function store(Request $request) {
        $request->validate([
            'name' => 'required', 
            'description' => 'required',
        ]);

        Vaccine::create([
            'name' => ucwords($request->name),
            'description' => $request->description,
        ]);
        return redirect('/vaccine')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");
    }

    public function show($id){
        $vaccine = Vaccine::where('id', $id)->first();
        return view('vaccines.show', compact('vaccine'));
    }

    public function edit($id){
        $vaccine = Vaccine::where('id', $id)->first();
        return view('vaccines.edit', compact('vaccine'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required', 
            'description' => 'required',
        ]);
        // $status = Hash::check($request->password, $user->password);
        // update data pegawai
        Vaccine::where('id', $id)->update([
            'name' => $request->name,
            'description' => $request->description,
        ]);
        // alihkan halaman ke halaman home
        return redirect('/vaccine')->with('status', "Data berhasil diubah");
    }

    public function destroy($id) {
        Vaccine::destroy($id);
        return redirect('/vaccine')->with('status', "Data berhasil dihapus");
    }
}
