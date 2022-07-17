@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Add Data</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tambah Vitamin</h5>
      <p class="mb-4">Hati-hati dalam input data. Beberapa data tidak dapat diubah setelah diinput!.</p>
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
         <form method="post" action="/vitamin/store">
          @csrf
          <div class="form-group">
             <label for="name">Nama Jenis Vitamin</label>
             <input type="text" placeholder="ex: Vitamin B12" class="form-control fs-normal form-spacer-20x15 @error('name') is-invalid @enderror" id="name" name="name" data-toggle="tooltip" data-placement="right" title="Nama Vitamin" value="{{ old('name') }}" autofocus>
             @error('name')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
          </div>
          <div class="form-group">
             <label for="description">Deskripsi</label>
             <textarea name="description" placeholder="ex: Deskripsi vitamin" class="form-control fs-normal form-spacer-20x15 @error('description') is-invalid @enderror" id="description" id="description">{{ old('description') }}</textarea>
             @error('description')<div class="invalid-feedback ml-1">{{ $message }}</div>@enderror
          </div>
          <div class="form-group">
            <label for="start_range_age">Dari Umur (Bulan)</label>
            <input type="number" placeholder="ex: 12" class="form-control fs-normal form-spacer-20x15 @error('start_range_age') is-invalid @enderror" id="start_range_age" name="start_range_age" data-toggle="tooltip" data-placement="right" title="Nama Vitamin" value="{{ old('start_range_age') }}" autofocus>
            @error('start_range_age')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
         </div>
         <div class="form-group">
            <label for="end_range_age">Sampai Umur (Bulan)</label>
            <input type="number" placeholder="ex: 11" class="form-control fs-normal form-spacer-20x15 @error('end_range_age') is-invalid @enderror" id="end_range_age" name="end_range_age" data-toggle="tooltip" data-placement="right" title="Nama Vitamin" value="{{ old('end_range_age') }}" autofocus>
            @error('end_range_age')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
         </div>

          <button type="submit" class="btn btn-primary font-medium float-right py-2 px-5">Tambah</button>
         </form>
      </div>
   </div>
</div>
<!-- /.container-fluid -->
@endsection
