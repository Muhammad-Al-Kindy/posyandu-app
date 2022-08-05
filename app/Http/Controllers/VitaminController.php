<?php

namespace App\Http\Controllers;

use App\Exports\VitaminExport;
use DateTime;
use App\Models\Baby;
use App\Models\Vitamin;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;

class VitaminController extends Controller {

    public function index() {
        $vitamin = Vitamin::all();
        return view('vitamins.index', ['vitamin' => $vitamin]);
    }

    public function export_excel(){
        return Excel::download(new VitaminExport, 'vitamin '.Carbon::now().'.xlsx');
        // $title = 'Export Vitamin';
        // $vitamins = Vitamin::orderBy('id', 'desc')->get();
        // return view('exports.vitamin', compact('vitamins', 'title'));
    }


    public function create() {
        return view('vitamins.create');
    }

    public function store(Request $request) {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'start_range_age' => 'required',
            'end_range_age' => 'required',
        ]);

        $request->name = ucwords($request->name);

        Vitamin::create([
            'name' => $request->name,
            'description' => $request->description,
            'start_range_age' => $request->start_range_age,
            'end_range_age' => $request->end_range_age,
        ]);
        return redirect('/vitamin')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");
    }

    public function show($id){
        $vitamin = Vitamin::where('id', $id)->first();
        return view('vitamins.show', compact('vitamin'));
    }

    public function edit($id){
        $vitamin = Vitamin::where('id', $id)->first();
        return view('vitamins.edit', compact('vitamin'));
    }

    public function update(Request $request, $id) {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        $request->name = ucwords($request->name);

        Vitamin::where('id', $id)->update([
            'name' => $request->name,
            'description' => $request->description,
            'start_range_age' => $request->start_range_age,
            'end_range_age' => $request->end_range_age,
        ]);
        return redirect('/vitamin')->with('status', "Data '" . $request->name . "' berhasil diubah");
    }

    public function unvitaminated($id) {
        $vitamin = Vitamin::where('id', $id)->first();
        $babies = Baby::select('babies.id as id_bayi', 'babies.nama as nama_bayi', 'babies.tanggal_lahir as tanggal_lahir', 'parents.*', 'vitamin.*', 'vitaminization.id_vitamin', DB::raw('COUNT(vitaminization.id_baby) as countID'))
                    ->join('parents', 'parents.id', '=', 'babies.id_parent')
                    ->leftJoin('vitaminization', 'vitaminization.id_baby', '=', 'babies.id')
                    ->leftJoin('vitamin', 'vitamin.id', '=', 'vitaminization.id_vitamin')
                    ->groupBy('id_bayi')
                    // ->whereNotNull('vitaminization.id_vitamin')
                    // ->where('vitaminization.id_vitamin', '==', $id)
                    ->get();
        // dd($babies);
        return view('vitaminizations.unvitaminated', compact('babies', 'vitamin'));
    }

    public function destroy($id) {
        Vitamin::destroy($id);
        return redirect('/vitamin')->with('status', "Data berhasil dihapus");
    }

    static function get_birtdate($tanggal_lahir){
        $birthDate = new DateTime();
        $birthDate->setTimestamp($tanggal_lahir);
        $today = new DateTime("today");
        // if ($birthDate > $today) {
        //     exit("0 tahun 0 bulan 0 hari");
        // }
        $y = $today->diff($birthDate)->y;
        $m = $today->diff($birthDate)->m;
        $d = $today->diff($birthDate)->d;
        if($y > 0){
            if($m == 0 && $d ==0){
                return $y." tahun";
            }else if($m == 0){
                return $y." tahun ".$d." hari";
            }else if($d == 0){
                return $y." tahun ".$m." bulan";
            }else{
                return $y." tahun ".$m." bulan ".$d." hari";
            }
        }else if($m > 0){
            if($y == 0 && $d ==0){
                return $m." bulan";
            }else if($y == 0){
                return $m." bulan ".$d." hari";
            }else if($d == 0){
                return $y." tahun ".$m." bulan";
            }else{
                return $y." tahun ".$m." bulan ".$d." hari";
            }
        }else{
            return $d." hari";
        }
    }
}
