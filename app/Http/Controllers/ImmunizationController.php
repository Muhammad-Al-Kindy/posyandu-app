<?php

namespace App\Http\Controllers;

use App\Exports\ImmunizationExport;
use App\Models\Baby;
use App\Models\Immunization;
use App\Models\Vaccine;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ImmunizationController extends Controller {
    public function index() {
        $babies = Baby::with('parents')
                        ->with('immunization')
                        ->orderBy('id', 'ASC')->get();
        // dd($babies);
        return view('immunizations.index', compact('babies'));
    }

    public function export_excel(){
        return Excel::download(new ImmunizationExport, 'Immunization '.Carbon::now().'.xlsx');
        // return view('exports.immunization', [
        //     'immunizations' => Immunization::with('baby')
        //                                 ->with('vaccine')->get(),
        //     'vaccines' => Vaccine::all(),
        //     'title' => 'Immunizations Export',
        // ]);
    }

    public static function get_immun_date($id_vaccine, $id_baby){

        $date_immun = Immunization::where('id_vaccine', $id_vaccine)->where('id_baby', $id_baby)->first();
        return $date_immun;
    }

    public function create($id_baby){
        $vaccines = Vaccine::all();
        $baby = Baby::where('id', $id_baby)->first();
        return view('immunizations.create', compact('vaccines', 'baby'));
    }

    public function store(Request $request, $id_baby) {
        $request->validate([
            'id_vaccine' => 'required',
            'bulan' => 'required',
            'date' => 'required',
        ]);

        $immuns = Immunization::with('baby')
                        ->with('vaccine')
                        ->where('id_vaccine',  $request->id_vaccine)
                        ->where('id_baby', $id_baby)->first();
        // dd($immuns->id_vaccine .'=='. $request->id_vaccine);
        if($immuns != null){
            return redirect()
                    ->back()
                    ->withInput()
                    ->with('danger', $immuns->baby->nama." Sudah di vaksin ".$immuns->vaccine->name);
        }else{
            Immunization::create([
                'id_baby' => $id_baby,
                'id_vaccine' => $request->id_vaccine,
                'bulan' => $request->bulan,
                'date' => $request->date,
            ]);

            return redirect('/immunization'.'/'.$id_baby.'/show')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");
        }
    }

    public function add($id_baby, $id){
        $vaccines = Vaccine::where('id', $id)->first();
        $baby = Baby::where('id', $id_baby)->first();
        return view('immunizations.addvaccine', compact('vaccines', 'baby'));
    }

    public function store_vaccine(Request $request, $id_baby) {
        $request->validate([
            'id_vaccine' => 'required',
            'bulan' => 'required',
            'date' => 'required',
        ]);

        $immuns = Immunization::with('baby')
                        ->with('vaccine')
                        ->where('id_vaccine',  $request->id_vaccine)
                        ->where('id_baby', $id_baby)->first();
        // dd($immuns->id_vaccine .'=='. $request->id_vaccine);
        if($immuns != null){
            return redirect()
                    ->back()
                    ->withInput()
                    ->with('danger', $immuns->baby->nama." Sudah di vaksin ".$immuns->vaccine->name);
        }else{
            Immunization::create([
                'id_baby' => $id_baby,
                'id_vaccine' => $request->id_vaccine,
                'bulan' => $request->bulan,
                'date' => $request->date,
            ]);

            return redirect('/vaccine'.'/'.$request->id_vaccine.'/unvaccinated')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");
        }
    }

    public function show($id){
        $baby = Baby::where('id', $id)->first();
        // dd($baby);
        $immunizations = Immunization::with('baby')
                        ->with('vaccine')
                        ->where('id_baby', $id)->get();
        return view('immunizations.show', compact('immunizations', 'baby'));
    }

    public function edit($id){
        $vaccines = Vaccine::all();
        $immunizations = Immunization::with('baby')
                            ->with('vaccine')
                            ->where('id', $id)->first();
        return view('immunizations.edit', compact('immunizations', 'vaccines'));
    }

    public function update(Request $request, $id_baby)
    {
        $request->validate([
            'id_baby' => 'required',
            'id_vaccine' => 'required',
            'bulan' => 'required',
            'date' => 'required',
        ]);

        Immunization::where('id', $request->id_immunization)->update([
            'id_baby' => $request->id_baby,
            'id_vaccine' => $request->id_vaccine,
            'bulan' => $request->bulan,
            'date' => $request->date,
        ]);
        
        return redirect('/immunization'.'/'.$id_baby.'/show')->with('status', "Data berhasil diubah");
    }

    public function destroy($id) {
        $immuns = Immunization::where('id',  $id)
                        ->first();
        $id_baby = $immuns->id_baby;
        Immunization::destroy($id);
        return redirect('/immunization'.'/'.$id_baby.'/show')->with('status', "Data berhasil dihapus");

    }
}
