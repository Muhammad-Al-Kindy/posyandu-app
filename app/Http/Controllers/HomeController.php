<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request) {
        $users = User::orderBy('id', 'desc')->get();
        $role = Auth::user()->role;

        if($role === 'Staff' || $role === 'Staff2' && $role !== 'Admin'){
            return redirect('/baby');
        }else{
            return view('users.index', compact('users'));
        }
    }

    public function create(){
        return view('users.create');
    }

    public function store(Request $request) {
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email|unique:users',
            'role' => 'required',
            'password' => 'required|min:5',
            'konfirmasi_password' => 'required|min:5|same:password'
        ]);

        $request->nama = ucwords($request->nama);
        $request->email = strtolower($request->email);

        User::create([
            'name' => $request->nama,
            'email' => $request->email,
            'role' => $request->role,
            'password' => Hash::make($request->password)
        ]);
        return redirect('/home')->with('status', "Data '" . $request->nama . "' berhasil ditambahkan");
    }

    public function edit($id){
        $user = User::where('id', $id)->first();
        return view('users.edit', compact('user'));
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'nama' => 'required',
            'role' => 'required',
            'password' => 'required|min:5'
        ]);
        // $status = Hash::check($request->password, $user->password);
        // update data pegawai
        User::where('id', $user->id)->update([
            'name' => $request->nama,
            'role' => $request->role,
        ]);
        // alihkan halaman ke halaman home
        return redirect('/home')->with('status', "Password '" . $user->name . "' berhasil diubah");
    }

    public function destroy(User $user) {
        $pop = $user->name;
        User::destroy($user->id);
        return redirect('/home')->with('status', "Data '" . $pop . "' berhasil dihapus");
    }

    public function profile($id){
        $user = User::where('id', auth()->user()->id)->first();
        return view('profile.profile', compact('user'));
    }

    public function update_password(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'konfirmasi_password' => 'same:password'
        ]);

        $status = '';

        if($request->nama != auth()->user()->name){
            User::where('id', auth()->user()->id)->update([
                'name' => $request->nama,
            ]);
            $status = 'Nama berhasil diubah';
        }else{
            User::where('id', auth()->user()->id)->update([
                'password' => Hash::make($request->konfirmasi_password)
            ]);
            $status = 'Password berhasil diubah';
        }
        
        // alihkan halaman ke halaman home
        return redirect('/home/'.auth()->user()->id.'/profile')->with('status', $status);
    }
}
