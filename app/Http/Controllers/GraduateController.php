<?php

namespace App\Http\Controllers;

use App\Models\Baby;
use Illuminate\Http\Request;

class GraduateController extends Controller
{
    public function index() {
        $babies = Baby::with('parents')
                    ->orderBy('id', 'ASC')->get();;

        return view('graduations.index', compact('babies'));
    }

    public function update($id){
        $baby = Baby::where('id', $id)->first();
        Baby::where('id', $id)->update([
            'no_kms' => NULL
        ]);
        // alihkan halaman ke halaman home
        return redirect('/graduation')->with('status', $baby->nama." Telah diluluskan oleh Posyandu Rajawali!");
    }
}
