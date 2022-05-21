<?php

namespace App\Http\Controllers;

use App\Models\Immunization;
use Illuminate\Http\Request;
use App\Http\Requests\ImmunizationRequest;

class ImmunizationController extends Controller {

    public function index() {
        $imun = Immunization::join('babies', 'immunization.id_baby', '=', 'babies.id')
            ->join('vaccine', 'immunization.id_vaccine', '=', 'vaccine.id')
            ->select('immunization.*', 'babies.*', 'vaccine.*')
            ->get();
        return view('immunization.index', ['imun' => $imun]);
    }

    public function store(ImmunizationRequest $request) {
        $request->validated();
        $imun = new Immunization;
        $imun->id_baby = $request->id_baby;
        $imun->id_vaccine = $request->id_vaccine;
        $imun->bulan = $request->bulan;
        $imun->date = $request->date;
        $imun->save();
        return redirect('/immunization');
    }

    public function show(Immunization $imun){
        return view('immunization.show', ['imun' => $imun]);
    }

    public function destroy(Immunization $imun) {
        Immunization::destroy($imun->id);
        return redirect('/immunization');
    }

    public function update(ImmunizationRequest $request, Immunization $imun) {
        $request->validated();
        $imun->id_baby = $request->id_baby;
        $imun->id_vaccine = $request->id_vaccine;
        $imun->bulan = $request->bulan;
        $imun->date = $request->date;
        $imun->update();
        return redirect('/immunization');
    }
}
