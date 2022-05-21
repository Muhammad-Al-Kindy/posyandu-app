@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">
  
  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Baby Detail</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Detail Bayi</h5>
      <p class="mb-4">Informasi dan pertumbuhan bayi</p>
    </div>
    <div class="col-md-6 d-flex justify-content-end">
      <a href="{{ $baby->id }}/progress" class="btn btn-primary mx-2 shadow-sm fs-normal align-self-center mt-n3">
        <span class="fas fa-chart-line"></span> Pertumbuhan Bayi</a>
      @if(auth()->user()->role == 'Staff2' || auth()->user()->role == 'Staff' || auth()->user()->role == 'Admin')
        <a href="{{ url('/baby').'/'.$baby->id.'/edit' }}" class="btn btn-info shadow-sm fs-normal align-self-center mt-n3">
          <span class="fas fa-edit"></span> Ubah Data</a>
      @endif
    </div>
  </div>

  <!-- DataTales Example -->
  <div class="card shadow border-0 mb-4">
    <div class="card-header bg-white py-3">
      <h6 class="m-0 font-weight-bold color-primary">Informasi Pribadi</h6>
    </div>
    <div class="card-body">
      <div class="row container-fluid">
        {{-- <div class="col-lg-6">
          <h5 class="fs-medium"><strong>ID Bayi</strong></h5>
          <p class="color-primary">XXXX</p>
        </div> --}}
        <div class="col-lg-4">
          <h5 class="fs-medium"><strong>Nama Bayi</strong></h5>
          <p class="color-primary">{{ $baby->nama }}</p>
        </div>
        <div class="col-lg-4">
          <h5 class="fs-medium"><strong>Nama Ibu</strong></h5>
            <p class="color-primary">{{ $parents->nama_ibu }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Nama Ayah</strong></h5>
            <p class="color-primary">{{ $parents->nama_ayah }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Tempat Lahir</strong></h5>
            <p class="color-primary">{{ $baby->tempat_lahir }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Tanggal Lahir</strong></h5>
            <p class="color-primary">{{ date('d/m/Y | H:i', $baby->tanggal_lahir) }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Usia</strong></h5>
            <p class="color-primary">{{ $umur }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Jenis Kelamin</strong></h5>
            <p class="color-primary">{{ $jenis_kelamin }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Anak Ke</strong></h5>
            <p class="color-primary">{{ $baby->anak_ke }}</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Alamat Lengkap</strong></h5>
            <p class="color-primary">{{ $parents->alamat }}</p>
          </div>
        </div>
      </div>
    </div>
    <div class="card shadow mb-4 border-0">
      <div class="card-header bg-white py-3">
        <h6 class="m-0 font-weight-bold color-primary">Informasi Kesehatan</h6>
      </div>
      <div class="card-body">
        <div class="row container-fluid">
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Golongan Darah</strong></h5>
            @if($baby->golongan_darah == "BT")
            <p class="color-primary">Belum Tahu</p>
            @else
            <p class="color-primary">{{ $baby->golongan_darah }}</p>
            @endif
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Tinggi Lahir</strong></h5>
            <p class="color-primary">{{ $baby->panjang_bayi }} cm</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Berat Lahir</strong></h5>
            <p class="color-primary">{{ $baby->berat_bayi }} kg</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Tinggi Sekarang</strong></h5>
            <p class="color-primary">{{ $panjang_sekarang }} cm</p>
          </div>
          <div class="col-lg-4">
            <h5 class="fs-medium"><strong>Berat Sekarang</strong></h5>
            <div class="row">
              <div class="col-4">

                <p class="color-primary">{{ $berat_sekarang }} kg</p>
              </div>
              <div class="col">

                {{-- <span class="badge badge-danger">Terlalu Gemuk</span> --}}
              </div>
            </div>
          </div>
          {{-- <div class="col-lg-4">
              <h5 class="fs-medium"><strong>Status Berat</strong></h5>
              <p class="alert alert-danger">Terlalu Kurus</p>
          </div> --}}
        </div>
      </div>
    </div>
  <div class="mb-5">
    <a href="{{ url('/baby') }}" class="text-decoration-none fs-normal mx-1">
      <span class="fas fa-arrow-left"></span> Kembali</a>
    <form action="{{ $baby->id }}" method="post" class="d-inline">
      @method('delete')
      @csrf
      <button class="btn btn-danger fs-normal mx-1" type="submit">
        <span class="fas fa-trash"></span> Hapus</button>
    </form>
  </div>
</div>
<!-- /.container-fluid -->
@endsection
