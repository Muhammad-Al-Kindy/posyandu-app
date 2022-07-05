@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Show Data</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Lihat Data Vitamin</h5>
      <p class="mb-4">Nama vitamin - {{ $vitamin->name }}.</p>
    </div>
    <div class="col-md-6 d-flex justify-content-end">
      <a href="/vitamin" class="btn btn-primary mx-2 py-2 shadow-sm fs-normal align-self-center px-3 mt-n3">Kembali</a>
    </div>
  </div>

   <!-- DataTales Example -->
   <div class="card shadow mb-4 border-0">
      <div class="card-header bg-white py-3">
         <h6 class="m-0 font-weight-bold color-primary">Data Vitamin</h6>
      </div>
      <div class="card-body container-fluid">
          <div class="form-group">
             <label for="name">Nama Jenis Vitamin</label>
             <input type="text" readonly placeholder="ex: BCG (Bacillus Calmette Guerin)" class="form-control fs-normal form-spacer-20x15 @error('name') is-invalid @enderror" id="name" name="name" data-toggle="tooltip" data-placement="right" title="name Lengkap Bayi" value="{{ $vitamin->name }}" autofocus>
             @error('name')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
          </div>
          <div class="form-group">
             <label for="description">Deskripsi</label>
             <textarea name="description" readonly placeholder="ex: Deskripsi vaksin" class="form-control fs-normal form-spacer-20x15 @error('description') is-invalid @enderror" id="description" id="description">{{ $vitamin->description }}</textarea>
             @error('description')<div class="invalid-feedback ml-1">{{ $message }}</div>@enderror
          </div>

      </div>
   </div>
</div>
<!-- /.container-fluid -->
@endsection
