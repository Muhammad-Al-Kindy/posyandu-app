<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Baby;
use App\Models\Vitamin;
use Illuminate\Http\Request;
use App\Models\Vitaminization;

class VitaminizationController extends Controller {
    public function index() {
        $babies = Baby::with('parents')
                        ->with('vitaminization')
                        ->orderBy('id', 'ASC')->get();
        // dd($babies);
        return view('vitaminizations.index', compact('babies'));
    }

    public function create($id_baby){
        $vit = Vitamin::all();
        $baby = Baby::where('id', $id_baby)->first();
        return view('vitaminizations.create', compact('vit', 'baby'));
    }

    public function store(Request $request, $id_baby) {
        $request->validate([
            'id_vitamin' => 'required',
            'bulan' => 'required',
            'date' => 'required',
        ]);

        $vits = Vitamin::where('name', $request->id_vitamin)->first();

        $vitamins = Vitaminization::with('baby')
                        ->with('vitamin')
                        ->where('id_vitamin',  $vits->id)
                        ->where('id_baby', $id_baby)->first();
        // dd($immuns->id_vaccine .'=='. $request->id_vaccine);
        if($vitamins != null){
            return redirect()
                    ->back()
                    ->withInput()
                    ->with('danger', $vitamins->baby->nama." Sudah di beri ".$vitamins->vitamin->name);
        }else{
            Vitaminization::create([
                'id_baby' => $id_baby,
                'id_vitamin' => $vits->id,
                'bulan' => $request->bulan,
                'date' => $request->date,
            ]);
            return redirect('/vitaminization'.'/'.$id_baby.'/show')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");

        }
    }

    public function add($id_baby, $id){
        $vit = Vitamin::where('id', $id)->first();
        $baby = Baby::where('id', $id_baby)->first();
        return view('vitaminizations.addvitamin', compact('vit', 'baby'));
    }

    public function store_vitamin(Request $request, $id_baby) {
        $request->validate([
            'id_vitamin' => 'required',
            'bulan' => 'required',
            'date' => 'required',
        ]);

        $vitamins = Vitaminization::with('baby')
                        ->with('vitamin')
                        ->where('id_vitamin',  $request->id_vitamin)
                        ->where('id_baby', $id_baby)->first();
        // dd($immuns->id_vaccine .'=='. $request->id_vaccine);
        if($vitamins != null){
            return redirect()
                    ->back()
                    ->withInput()
                    ->with('danger', $vitamins->baby->nama." Sudah di vitamin ".$vitamins->vitamin->name);
        }else{
            Vitaminization::create([
                'id_baby' => $id_baby,
                'id_vitamin' => $request->id_vitamin,
                'bulan' => $request->bulan,
                'date' => $request->date,
            ]);
            return redirect('/vitaminization'.'/'.$id_baby.'/show')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");
        }
    }

    public function show($id_baby){
        $vit = Vitaminization::with('baby')
                        ->with('vitamin')
                        ->where('id_baby', $id_baby)->get();
        $baby = Baby::where('id', $id_baby)->first();
        return view('vitaminizations.show', compact('vit', 'baby'));
    }

    public function edit($id){
        $vitamins = Vitamin::all();
        $vitaminization = Vitaminization::with('baby')
                                    ->with('vitamin')
                                    ->where('id', $id)->first();
        return view('vitaminizations.edit', compact('vitaminization', 'vitamins'));
    }

    public function update(Request $request, $id_baby){
        $request->validate([
            'id_vitamin' => 'required',
            'id_vitamin' => 'required',
            'bulan' => 'required',
            'date' => 'required',
        ]);

        $vitamins = Vitaminization::with('baby')
                        ->with('vitamin')
                        ->where('id_vitamin',  $request->id_vitamin)
                        ->where('id_baby', $id_baby)->first();
        // dd($immuns->id_vaccine .'=='. $request->id_vaccine);
        if($vitamins != null){
            return redirect()
                    ->back()
                    ->withInput()
                    ->with('danger', $vitamins->baby->nama." Sudah di vitamin ".$vitamins->vitamin->name);
        }else{
            Vitaminization::where('id', $request->id_vitaminization)->update([
                'id_baby' => $id_baby,
                'id_vitamin' => $request->id_vitamin,
                'bulan' => $request->bulan,
                'date' => $request->date,
            ]);

            return redirect('/vitaminization'.'/'.$id_baby.'/show')->with('status', "Data '" . $request->name . "' berhasil diubah");
        }
    }

    public function destroy($id) {
        $vitaminisasi = Vitaminization::where('id',  $id)
                        ->first();
        $id_baby = $vitaminisasi->id_baby;
        Vitaminization::destroy($id);
        return redirect('/vitaminization'.'/'.$id_baby.'/show')->with('status', "Data berhasil dihapus");

    }

    static function get_birtdate($tanggal_lahir){
        $birthDate = new DateTime();
        $birthDate->setTimestamp($tanggal_lahir);
        $today = new DateTime("today");
        if ($birthDate > $today) {
            exit(0);
        }
        $m = $today->diff($birthDate)->m;
        if($m > 0){
            return $m;
        }else{
            return 0;
        }
    }
}
