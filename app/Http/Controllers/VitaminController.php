<?php

namespace App\Http\Controllers;

use App\Models\Vitamin;
use Illuminate\Http\Request;

class VitaminController extends Controller {

    public function index() {
        return view('vitamins.index', ['data' => Vitamin::all()]);
    }

    public function create() {
        return view('vitamins.create');
    }

    public function store(Request $request) {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        $request->name = ucwords($request->name);

        Vitamin::create([
            'name' => $request->name,
            'description' => $request->description,
        ]);
        return redirect('/vitamin')->with('status', "Data '" . $request->name . "' berhasil ditambahkan");
    }

    public function show($id){
        $vaccine = Vitamin::where('id', $id)->first();
        return view('vitamins.show', compact('vitamin'));
    }

    public function edit($id){
        $vaccine = Vitamin::where('id', $id)->first();
        return view('vitamins.edit', compact('vitamin'));
    }

    public function update(Request $request, $id) {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        $request->name = ucwords($request->name);

        $vitamin = Vitamin::where('id', $id)->update([
            'name' => $request->name,
            'description' => $request->description,
        ]);
        return redirect('/vitamin')->with('status', "Data '" . $request->name . "' berhasil diubah");
    }

    public function destroy($id) {
        $vitamin = Vitamin::destroy($id);
        return redirect('/vitamin')->with('status', "Data '" . $vitamin['name'] . "' berhasil dihapus");
    }
}
