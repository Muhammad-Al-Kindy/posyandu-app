<?php

namespace App\Http\Controllers;

use App\Models\Immunization;
use App\Models\User;
use App\Models\Vaccine;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class VaccineController extends Controller
{
    public function index(Request $request) {
        $vaccines = Vaccine::orderBy('id', 'desc')->get();
        return view('vaccines.index', compact('vaccines'));
    }

    public function create(){
        return view('vaccines.create');
    }

    public function unvaccinated($id){
        $immuns = Immunization::get();
        return view('immunizations.unvaccinated', compact('immuns'));
    }

    public function store(Request $request) {
        $request->validate([
            'name' => 'required', 
            'description' => 'required',
        ]);

        $request->name = ucwords($request->name);

        Vaccine::create([
            'name' => $request->name,
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
