<?php

namespace App\Http\Controllers;

use DateTime;
use App\Models\Baby;
use App\Models\Parents;
use App\Models\ProgressBaby;
use Illuminate\Http\Request;
// use Maatwebsite\Excel\Excel;
use App\Exports\ExportBabiesData;
use App\Models\ManipulationChart;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Facades\Excel;

class BabiesController extends Controller {
    public function progress(Baby $baby, Request $request){
        $progress = DB::table('babies AS b')
            ->join('progress_babies AS p', 'b.id', '=', 'p.id_bayi')
            ->join('parents AS pr', 'b.id_parent', '=', 'pr.id')
            ->select('b.nama', 'pr.nama_ibu', 'pr.nama_ayah', 'b.tempat_lahir','pr.nik_ayah','pr.nik_ibu', 'b.tanggal_lahir', 'b.anak_ke', 'pr.alamat', 'b.jenis_kelamin', 'b.golongan_darah', 'p.id_bayi', 'p.bulan_ke', 'p.panjang_bayi', 'p.berat_bayi', 'p.lingkar_kepala')
            ->where('id_bayi', $baby->id)
            ->get();
        $jk = $baby->jenis_kelamin == 1 ? 'fas fa-mars' : 'fas fa-venus';
        $kelamin = $baby->jenis_kelamin == 1 ? 'Laki-Laki' : 'Perempuan';
        $i = 0;
        $bulan = null;

        foreach($progress as $d):
            $bulan[$i] = $d->bulan_ke;
            $i++;
        endforeach;

        if(count($progress) == 0){
            $progress = null;
            $panjang_bayi = $baby->panjang_bayi;
            $berat_bayi = $baby->berat_bayi;
        }else{
            $progress = $progress;
            // $detail = DB::table('progress_babies')->select('panjang_bayi', 'berat_bayi')->where('id_bayi', $baby->id)->where('bulan_ke', max($bulan))->get();
            // $panjang_bayi = $detail[0]->panjang_bayi;
            // $berat_bayi = $detail[0]->berat_bayi;
        }
        $dataProgress = $this->chartProgress($progress, $baby, $bulan);
		$dataProgressPanjang = $this->chartProgressPanjang($progress, $baby, $bulan);
        $session = auth()->user()->role;
        if($request->_age == null){
            if($progress == null || max($bulan) < 13){
                $umur = "0 - 12 Bulan";
            }else if(max($bulan) > 12 && max($bulan) <= 24){
                $umur = "1 - 2 Tahun";
            }else if(max($bulan) > 24 && max($bulan) <= 36){
                $umur = "2 - 3 Tahun";
            }else if(max($bulan) > 36 && max($bulan) <= 48){
                $umur = "3 - 4 Tahun";
            }else if(max($bulan) > 48 && max($bulan) <= 60){
                $umur = "4 - 5 Tahun";
            }
        }else{
            switch($request->_age){
                case 1:
                    $umur = "0 - 12 Bulan";
                    break;
                case 2:
                    $umur = "1 - 2 Tahun";
                    break;
                case 3:
                    $umur = "2 - 3 Tahun";
                    break;
                case 4:
                    $umur = "3 - 4 Tahun";
                    break;
                case 5:
                    $umur = "4 - 5 Tahun";
                    break;
                default:
                    $umur = "Not Found!";
            }
        }

        $data = [
            'baris' => $baby,
            'progress' => $progress,
            'jk' => $jk,
            'dtProgress' => $dataProgress,
            'umur' => $umur,
            'bulan_ke' => $baby->bulan_ke,
            'kelamin' => $kelamin,
            'session' => $session,
			'dtProgressPanjang' => $dataProgressPanjang
        ];

        echo view('progress.index', $data);

        if($request->_age == null){ // untuk filter
            if($baby->jenis_kelamin == 1){
                if($progress == null || max($bulan) < 13){
                    echo view('progress.kms-laki', $data);
                    echo view('progress.panjang-kms-laki', $data);
                }else if(max($bulan) > 12 && max($bulan) <= 24){
                    // dd('berhasil');
                    echo view('progress.kms-laki2', $data);
                    echo view('progress.panjang-kms-laki2', $data);
                }else if(max($bulan) > 24 && max($bulan) <= 36){
                    echo view('progress.kms-laki3', $data);
                    echo view('progress.panjang-kms-laki3', $data);
                }else if(max($bulan) > 36 && max($bulan) <= 48){
                    echo view('progress.kms-laki4', $data);
                    echo view('progress.panjang-kms-laki4', $data);
                }else if(max($bulan) > 48 && max($bulan) <= 60){
                    echo view('progress.kms-laki5', $data);
                    echo view('progress.panjang-kms-laki5', $data);
                }
            }else if($baby->jenis_kelamin == 2){
                if($progress == null || max($bulan) < 13){
                    echo view('progress.kms-perempuan', $data);
                    echo view('progress.panjang-kms-perempuan', $data);
                }else if(max($bulan) > 12 && max($bulan) <= 24){
                    echo view('progress.kms-perempuan2', $data);
                    echo view('progress.panjang-kms-perempuan2', $data);
                }else if(max($bulan) > 24 && max($bulan) <= 36){
                    echo view('progress.kms-perempuan3', $data);
                    echo view('progress.panjang-kms-perempuan3', $data);
                }else if(max($bulan) > 36 && max($bulan) <= 48){
                    echo view('progress.kms-perempuan4', $data);
                    echo view('progress.panjang-kms-perempuan4', $data);
                }else if(max($bulan) > 48 && max($bulan) <= 60){
                    echo view('progress.kms-perempuan5', $data);
                    echo view('progress.panjang-kms-perempuan5', $data);
                }
            }
        }else{
            if($baby->jenis_kelamin == 1){
                switch($request->_age){
                    case 1:
                        echo view('progress.kms-laki', $data);
                        echo view('progress.panjang-kms-laki', $data);
                        break;
                    case 2:
                        echo view('progress.kms-laki2', $data);
                        echo view('progress.panjang-kms-laki2', $data);
                        break;
                    case 3:
                        echo view('progress.kms-laki3', $data);
                        echo view('progress.panjang-kms-laki3', $data);
                        break;
                    case 4:
                        echo view('progress.kms-laki4', $data);
                        echo view('progress.panjang-kms-laki4', $data);
                        break;
                    case 5:
                        echo view('progress.kms-laki5', $data);
                        echo view('progress.panjang-kms-laki5', $data);
                        break;
                }
            }else if($baby->jenis_kelamin == 2){
                switch($request->_age){
                    case 1:
                        echo view('progress.kms-perempuan', $data);
                        echo view('progress.panjang-kms-perempuan', $data);
                        break;
                    case 2:
                        echo view('progress.kms-perempuan2', $data);
                        echo view('progress.panjang-kms-perempuan2', $data);
                        break;
                    case 3:
                        echo view('progress.kms-perempuan3', $data);
                        echo view('progress.panjang-kms-perempuan3', $data);
                        break;
                    case 4:
                        echo view('progress.kms-perempuan4', $data);
                        echo view('progress.panjang-kms-perempuan4', $data);
                        break;
                    case 5:
                        echo view('progress.kms-perempuan5', $data);
                        echo view('progress.panjang-kms-perempuan5', $data);
                        break;
                }
            }
        }
    }

    // public function export_excel() {
    //     return Excel::download(new ExportBabiesData, 'data_bayi - ' . Carbon::now() . '.xlsx');
    // }

    public function simpanprogress(Request $request){
        $detail = DB::table('progress_babies')->select('bulan_ke')->where('id_bayi', $request->id_bayi)->get();
        for($i=0 ; $i<count($detail) ; $i++){
            if($detail[$i]->bulan_ke == $request->bulan_ke){
                return redirect('/baby/'.$request->id_bayi.'/progress')->with('danger', "Data bulan ke-".$detail[$i]->bulan_ke ." sudah ada");
            }
        }

        $request->validate([
            'bulan_ke' => 'required',
            'lingkar_kepala' => 'required',
            'panjang_bayi' => 'required',
            'berat_bayi' => 'required'
        ]);
        ProgressBaby::create($request->all());
        return redirect('/baby/'.$request->id_bayi.'/progress')->with('status', "Data baru berhasil ditambahkan");
    }

    public function chartProgress($progress, $baby, $bulan){
        $data[0] = $baby->berat_bayi;
        $progressBaru[0] = 0;
        if($progress != null){
            for($i = 1; $i<=count($progress) ; $i++){
                $progressBaru[$i] = $progress[$i-1];
            }
        }
        if($progress == null){
            for($i = 1; $i<=60 ; $i++){
                $data[$i] = null;
            }
            return $data;
        }else{
            if(max($bulan) >=1 && max($bulan) <= 60){
                for($i=1 ; $i<=60 ; $i++){
                    $data[$i] = 0;
                    for($j=1 ; $j<=count($progress) ; $j++){
                        if($i == $progressBaru[$j]->bulan_ke){
                            $data[$i] = $progressBaru[$j]->berat_bayi;
                        }
                    }
                }
            }
            return $data;
        }
    }

    public function chartProgressPanjang($progress, $baby, $bulan){
	 $data[0] = $baby->panjang_bayi;
        $progressBaru[0] = 0;
        if($progress != null){
            for($i = 1; $i<=count($progress) ; $i++){
                $progressBaru[$i] = $progress[$i-1];
            }
        }
        if($progress == null){
            for($i = 1; $i<=60 ; $i++){
                $data[$i] = null;
            }
            return $data;
        }else{
            if(max($bulan) >=1 && max($bulan) <= 60){
                for($i=1 ; $i<=60 ; $i++){
                    $data[$i] = 0;
                    for($j=1 ; $j<=count($progress) ; $j++){
                        if($i == $progressBaru[$j]->bulan_ke){
                            $data[$i] = $progressBaru[$j]->panjang_bayi;
                        }
                    }
                }
            }
            return $data;
        }
	}

    public function dataProgress($progress, $baby){
        $data[0] = $baby->berat_bayi;
        if($progress == null){
            for($i = 1; $i<=12 ; $i++){
                $data[$i] = null;
            }
            return $data;
        }else{
            if(count($progress) <= 12){
                for($i = 1; $i<=12 ; $i++){
                    if($i<=count($progress)){
                        $data[$i] = $progress[$i-1]->berat_bayi;
                    }else if($i > count($progress)){
                        $data[$i] = 0;
                    }
                }
            }else if(count($progress) >= 13 && count($progress) <= 24){
                for($i = 1; $i<=25 ; $i++){
                    if($i<=count($progress)){
                        $data[$i] = $progress[$i-1]->berat_bayi;
                    }else if($i > count($progress)){
                        $data[$i] = 0;
                    }
                }
            }else if(count($progress) >= 25 && count($progress) <= 36){
                for($i = 1; $i<=36 ; $i++){
                    if($i<=count($progress)){
                        $data[$i] = $progress[$i-1]->berat_bayi;
                    }else if($i > count($progress)){
                        $data[$i] = 0;
                    }
                }
            }else if(count($progress) >= 37 && count($progress) <= 48){
                for($i = 1; $i<=48 ; $i++){
                    if($i<=count($progress)){
                        $data[$i] = $progress[$i-1]->berat_bayi;
                    }else if($i > count($progress)){
                        $data[$i] = 0;
                    }
                }
            }else if(count($progress) >= 49 && count($progress) <= 60){
                for($i = 1; $i<=60 ; $i++){
                    if($i<=count($progress)){
                        $data[$i] = $progress[$i-1]->berat_bayi;
                    }else if($i > count($progress)){
                        $data[$i] = 0;
                    }
                }
            }
            return $data;
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        //$role = $request->session()->get('role');
		$role = Auth::user()->role;
        // dd($role);
        $babies = DB::table('babies AS b')
                ->join('parents AS pr', 'b.id_parent', '=', 'pr.id')
                ->select('b.id', 'b.nama', 'pr.nama_ibu','pr.nik_ibu','pr.nik_ayah' , 'pr.nama_ayah', 'b.tempat_lahir', 'b.tanggal_lahir', 'b.anak_ke', 'pr.alamat', 'b.jenis_kelamin', 'b.golongan_darah')
                ->get();

        return view('babies.baby', compact('babies'));

        // if($role === 'Admin' ){
        //     return redirect('/home');
        // }else if($role === 'Staff' || $role === 'Staff2' ){
        //     return view('babies.baby', compact('babies'));
        // }else{
        //     return redirect('login');
        // }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        return view('babies.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
         $request->validate([
            'nama' => 'required|string',
            'no_kms' => 'required|string',
            // 'nik_bayi' => 'string|max:16|unique:babies',
            // 'nik_ibu' => 'required|string',
            'nama_ibu' => 'required|string',
            'pekerjaan_ibu' => 'required|string',
            // 'nik_ayah' => 'required|string',
            'nama_ayah' => 'required|string',
            'pekerjaan_ayah' => 'required|string',
            'tempat_lahir' => 'required',
            'tanggal_lahir' => 'required',
            'anak_ke' => 'required|integer',
            'alamat' => 'required',
            'jenis_kelamin' => 'required',
            'golongan_darah' => 'required',
            'panjang_bayi' => 'required',
            'berat_bayi' => 'required',
            'lingkar_kepala' => 'required',
        ]);

        $request->tanggal_lahir = mktime(
            (int) substr($request->tanggal_lahir, 11, 2), // jam
            (int) substr($request->tanggal_lahir, 14, 2), //menit
            00, // detik
            (int) substr($request->tanggal_lahir, 5, 2), // bulan
            (int) substr($request->tanggal_lahir, 8, 2), // tanggal
            (int) substr($request->tanggal_lahir, 0, 4) // tahun
        );

        // convert int to date
        // dd(date('m/d/Y H:i', $request->tanggal_lahir));

        // $baby = new Baby;
        // $baby->nama = $request->nama;
        // $baby->nama_ibu = $request->nama_ibu;
        // $baby->nama_ayah = $request->nama_ayah;
        // $baby->save();
        Parents::create([
            'nik_ibu' => ucwords($request->nik_ibu),
            'nama_ibu' => ucwords($request->nama_ibu),
            'pekerjaan_ibu' => ucwords($request->pekerjaan_ibu),
            'nik_ayah' => ucwords($request->nik_ayah),
            'nama_ayah' => ucwords($request->nama_ayah),
            'pekerjaan_ayah' => ucwords($request->pekerjaan_ayah),
            'alamat' => ucfirst($request->alamat),
        ]);

        $ortu = Parents::latest()->first();
        // dd($ortu->id);
        Baby::create([
            'nama' => ucwords($request->nama),
            'no_kms' => $request->no_kms,
            'nik_bayi' => $request->nik_bayi,
            'id_parent' => $ortu->id,
            'tempat_lahir' => ucfirst($request->tempat_lahir),
            'tanggal_lahir' => $request->tanggal_lahir,
            'anak_ke' => $request->anak_ke,
            'jenis_kelamin' => $request->jenis_kelamin,
            'golongan_darah' => $request->golongan_darah,
            'panjang_bayi' => $request->panjang_bayi,
            'berat_bayi' => $request->berat_bayi,
            'lingkar_kepala' => $request->lingkar_kepala
        ]);

        // otomatis mengisi yang di fillable tanpa inisialisasi satu per satu
        // Baby::create($request->all());
        return redirect('/baby')->with('status', "Data '" . $request->nama . "' berhasil ditambahkan");
    }

    /**
     * Display the specified resource.
     *
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Baby $baby) {
        $progress = DB::table('babies AS b')
            ->join('progress_babies AS p', 'b.id', '=', 'p.id_bayi')
            ->join('parents AS pr', 'b.id_parent', '=', 'pr.id')
            ->select('b.nama', 'pr.nama_ibu', 'pr.nama_ayah','pr.nik_ibu','pr.nik_ayah', 'b.tempat_lahir', 'b.tanggal_lahir', 'b.anak_ke', 'pr.alamat', 'b.jenis_kelamin', 'b.golongan_darah', 'p.id_bayi', 'p.bulan_ke', 'p.panjang_bayi', 'p.berat_bayi', 'p.lingkar_kepala')
            ->where('id_bayi', $baby->id)
            ->get();

        $parents = DB::table('parents as p')
            ->join('babies as b', 'p.id', '=', 'b.id_parent')
            ->select('p.nama_ibu','p.nik_ibu','p.nik_ayah', 'p.nama_ayah', 'p.alamat')
            ->where('b.id', $baby->id)
            ->first();
        $i = 0;
        foreach($progress as $d):
            $bulan[$i] = $d->bulan_ke;
            $i++;
        endforeach;
        if(count($progress) == 0){
            $panjang_bayi = $baby->panjang_bayi;
            $berat_bayi = $baby->berat_bayi;
            $lingkar_kepala = $baby->lingkar_kepala;
        }else{
            $detail = DB::table('progress_babies')->select('panjang_bayi', 'berat_bayi', 'lingkar_kepala')->where('id_bayi', $baby->id)->where('bulan_ke', max($bulan))->get();
            $panjang_bayi = $detail[0]->panjang_bayi;
            $berat_bayi = $detail[0]->berat_bayi;
            $lingkar_kepala = $detail[0]->lingkar_kepala;
        }
        // $this->status($baby->jenis_kelamin, $baby->tanggal_lahir);
        // $this->hitungIdeal(date('Y-m-d', $baby->tanggal_lahir), $baby);
        $umur = $this->hitung_umur(date('Y-m-d', $baby->tanggal_lahir));
        $jk = $baby->jenis_kelamin == 1 ? 'Laki-laki' : 'Perempuan';
        $data = [
            'parents' => $parents,
            'baby' => $baby,
            'jenis_kelamin' => $jk,
            'umur' => $umur,
            'panjang_sekarang' => $panjang_bayi,
            'berat_sekarang' => $berat_bayi,
            'lingkar_kepala' => $lingkar_kepala,
        ];
        return view('babies.show', $data);
    }

    function status($jk, $tanggal_lahir){
        $bulan = (date('Y')-date('Y', $tanggal_lahir))*12;
        $bulan += date('m')-date('m', $tanggal_lahir);
        switch($jk){
            case 1:
                // dd($bulan);
            break;
            case 2:
                // dd($bulan);
            break;
        }
    }

    function hitung_umur($tanggal_lahir){
        $birthDate = new DateTime($tanggal_lahir);
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
            if($m == 0 && $d == 0){
                return $y." tahun";
            }else if($m == 0){
                return $y." tahun ".$d." hari";
            }else if($d == 0){
                return $y." tahun ".$m." bulan";
            }else{
                return $y." tahun ".$m." bulan ".$d." hari";
            }
        }else if($m > 0){
            if($y == 0 && $d == 0){
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

    static function measurement_date($tanggal_lahir, $tanggal_pengukuran){
        $birthDate = new DateTime();
        $birthDate->setTimestamp($tanggal_lahir);

        $measurementDate = new DateTime();
        $measurementDate->setTimestamp($tanggal_pengukuran);

        $y = $birthDate->diff($measurementDate)->y;
        $m = $birthDate->diff($measurementDate)->m;
        $d = $birthDate->diff($measurementDate)->d;

        if($y > 0){
            if($m == 0 && $d == 0){
                return $y." tahun";
            }else if($m == 0){
                return $y." tahun ".$d." hari";
            }else if($d == 0){
                return $y." tahun ".$m." bulan";
            }else{
                return $y." tahun ".$m." bulan ".$d." hari";
            }
        }else if($m > 0){
            if($y == 0 && $d == 0){
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

    static function get_birtdate_month($tanggal_lahir){
        $birthDate = new DateTime();
        $birthDate->setTimestamp($tanggal_lahir);
        $today = new DateTime("today");
        if ($birthDate > $today) {
            exit("0 bulan 0 hari");
        }

        $y = $today->diff($birthDate)->y;
        $m = $today->diff($birthDate)->m;
        $d = $today->diff($birthDate)->d;
        if($m > 0){
            if($y == 0 && $d ==0){
                return ($y * 12) + $m." bulan";
            }else if($y == 0){
                return ($y * 12) + $m." bulan ".$d." hari";
            }else if($d == 0){
                return  ($y * 12) + $m." bulan";
            }else{
                return ($y * 12) + $m." bulan ".$d." hari";
            }
        }else{
            return $d." hari";
        }
    }

    static function get_birtdate_only_month($tanggal_lahir){
        $birthDate = new DateTime();
        $birthDate->setTimestamp($tanggal_lahir);
        $today = new DateTime("today");
        if ($birthDate > $today) {
            exit("0 bulan 0 hari");
        }
        $months = Carbon::parse($birthDate);
        $month = $months->diffInMonths($today);
        return $month;
    }

    static function get_graduate($tanggal_lahir){
        $birthDate = new DateTime();
        $birthDate->setTimestamp($tanggal_lahir);
        $today = new DateTime("today");
        // if ($birthDate > $today) {
        //     exit("0 tahun 0 bulan 0 hari");
        // }
        $y = $today->diff($birthDate)->y;
        if($y > 0){
            return $y;
        }
    }

    public function hitungIdeal($tanggal_lahir, Baby $baby){
        $birthDate = new DateTime($tanggal_lahir);
        $today = new DateTime("today");
        // if ($birthDate > $today) {
        //     exit("0 tahun 0 bulan 0 hari");
        // }
        $y = $today->diff($birthDate)->y;
        $m = $today->diff($birthDate)->m;
        $d = $today->diff($birthDate)->d;
        // var_dump($m);die;
        if($y == 0 && $m >= 1 && $m <= 6){
            $hasil = (int)$baby->berat_bayi+($m*600);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $baby = Baby::with('parents')
                        ->where('id', $id)
                        ->first();
        $umur = $this->hitung_umur(date('Y-m-d', $baby->tanggal_lahir));

        $laki = ''; $perempuan = '';
        switch($baby->jenis_kelamin){
            case 1: $laki = 'checked';
                break;
            case 2: $perempuan = 'checked';
                break;
        }
        // dd($baby->golongan_darah);
        $a = '';$b = '';$ab = '';$o = '';$bt = '';
        switch($baby->golongan_darah){
            case "A": $a = 'selected';
                break;
            case "B": $b = 'selected';
                break;
            case "AB": $ab = 'selected';
                break;
            case "O": $o = 'selected';
                break;
            case "BT": $bt = 'selected';
                break;
        }

        return view('babies.edit', compact('baby'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        $request->validate([
            'nama' => 'required',
            'no_kms' => 'string|nullable',
            // 'nik_bayi' => 'string|max:16|unique:babies',
            // 'nik_ibu' => 'required',
            'nama_ibu' => 'required',
            'pekerjaan_ibu' => 'required',
            // 'nik_ayah' => 'required',
            'nama_ayah' => 'required',
            'pekerjaan_ayah' => 'required',
            'tempat_lahir' => 'required',
            'tanggal_lahir' => 'required',
            'anak_ke' => 'required',
            'alamat' => 'required',
            'jenis_kelamin' => 'required',
            'golongan_darah' => 'required',
            'panjang_bayi' => 'required',
            'berat_bayi' => 'required',
            'lingkar_kepala' => 'required',
        ]);

        $request->tanggal_lahir = mktime(
            (int) substr($request->tanggal_lahir, 11, 2), // jam
            (int) substr($request->tanggal_lahir, 14, 2), //menit
            00, // detik
            (int) substr($request->tanggal_lahir, 5, 2), // bulan
            (int) substr($request->tanggal_lahir, 8, 2), // tanggal
            (int) substr($request->tanggal_lahir, 0, 4) // tahun
        );

        Parents::where('id', $request->id_parent)->update([
            'nik_ibu' => $request->nik_ibu,
            'nama_ibu' => $request->nama_ibu,
            'pekerjaan_ibu' => $request->pekerjaan_ibu,
            'nik_ayah' => $request->nik_ayah,
            'nama_ayah' => $request->nama_ayah,
            'pekerjaan_ayah' => $request->pekerjaan_ayah,
            'alamat' => $request->alamat,
        ]);
        // dd($ortu->id);
        Baby::where('id', $id)->update([
            'nama' => $request->nama,
            'no_kms' => $request->no_kms,
            'nik_bayi' => $request->nik_bayi,
            'tempat_lahir' => $request->tempat_lahir,
            'tanggal_lahir' => $request->tanggal_lahir,
            'anak_ke' => $request->anak_ke,
            'jenis_kelamin' => $request->jenis_kelamin,
            'golongan_darah' => $request->golongan_darah,
            'panjang_bayi' => $request->panjang_bayi,
            'berat_bayi' => $request->berat_bayi,
            'lingkar_kepala' => $request->lingkar_kepala,
        ]);
        // alihkan halaman ke halaman pegawai
        return redirect('/baby/'.$id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Baby $baby) {
        Baby::destroy($baby->id);
        return redirect('/baby')->with('status', "Data '" . $baby->nama . "' berhasil dihapus");
    }
}