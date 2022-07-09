@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Vitaminization</span></p>

  @if(session('status'))
    <div class="alert alert-success">
      {{session('status')}}
    </div>
  @endif
  @if(session('danger'))
  <div class="alert alert-danger">
    {{session('danger')}}
  </div>
  @endif

  <!-- DataTales Example -->
  <div class="card shadow mb-5 border-0">
    <div class="card-body">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tabel Data Vitaminisasi - {{ $baby->nama }}</h5>
      <p class="mb-3 float-left">Halaman ini untuk mengelola data Vitaminisasi</p>
      <a href="{{ url('/vitaminization/create/'.$baby->id) }}" class="btn btn-primary mx-1 py-2 px-3 fs-normal float-right mb-3 shadow-sm"> <span class="fas fa-syringe mx-1"></span> Tambah Vitaminisasi</a>
      <a href="{{ url('/vitaminization') }}" class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm"> <span class="fas fa-arrow-left mx-1"></span> Kembali</a>


      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>Nama Bayi</th>
              <th>Jenis Vaksin</th>
              <th>Umur (Bulan)</th>
              <th>Tanggal</th>
              <th>Action</th>
            </tr>
         </thead>
         <tbody>
            @foreach($vit as $vitaminization)
            <tr>
               <td class="text-center">{{ $loop->iteration }}</td>
               <td>{{ ucwords($vitaminization->baby->nama) }}</td>
               <td>{{ $vitaminization->vitamin->name }}</td>
               <td>{{ $vitaminization->bulan }} Bulan</td>
               <td>{{ $vitaminization->date }}</td>
               <td class="text-center">
                 <form action="/vitaminization/{{ $vitaminization->id }}" method="POST" onsubmit="return confirm('Anda yakin akan menghapus data {{ $vitaminization->baby->name }}')">

                  <a href="/vitaminization/{{ $vitaminization->id }}/edit" class="btn btn-sm fs-small btn-info"><i class="fas fa-user-edit mx-1"></i> Ubah</a>
                  @csrf
                  @method('DELETE')
                  <button type="submit" class="btn fs-small btn-danger btn-sm"><i class="fas fa-trash mx-1"></i> Hapus</button>
                 </form>
                </td>
            </tr>
            @endforeach
         </tbody>
        </table>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->
@endsection
