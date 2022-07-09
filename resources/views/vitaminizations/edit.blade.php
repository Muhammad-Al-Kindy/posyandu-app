@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Add Data</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Ubah Data Vitaminisasi</h5>
      <p class="mb-4">Hati-hati dalam input data. Beberapa data tidak dapat diubah setelah diinput!.</p>
    </div>
    <div class="col-md-6 d-flex justify-content-end">
      <a href="/vitaminization/{{ $vitaminization->baby->id }}/show" class="btn btn-primary mx-2 py-2 shadow-sm fs-normal align-self-center px-3 mt-n3">
         <span class="fas fa-arrow-left"></span> Kembali</a>
    </div>
  </div>

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
   <div class="card shadow mb-4 border-0">
      <div class="card-header bg-white py-3">
         <h6 class="m-0 font-weight-bold color-primary">Data Vitaminisasi</h6>
      </div>
      <div class="card-body container-fluid">
         <form method="post" action="/vitaminization/{{ $vitaminization->baby->id.'/update' }}">
          @method('PUT')
          @csrf
          <div class="form-group">
            <label for="name">Nama Bayi</label>
            <input type="text" placeholder="ex: BCG (Bacillus Calmette Guerin)" class="form-control fs-normal form-spacer-20x15 @error('name') is-invalid @enderror" id="name" name="name" data-toggle="tooltip" data-placement="right" title="name Lengkap Bayi" value="{{ $vitaminization->baby->nama }}" readonly autofocus>
            @error('name')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
          </div>

          <div class="form-group row">
            <div class="col-md-4">
              <label for="id_vitamin">Nama Jenis Vitamin</label>
              <select name="id_vitamin" id="id_vitamin" class="form-control-select fs-normal form-spacer-10x8 @error('id_vitamin') is-invalid @enderror">
                @foreach ($vitamins as $item)
                  <option value="{{ $item->id }}" {{ ($vitaminization->id_vitamin == $item->id) ? 'selected' : '' }}>{{ $item->name }}</option>
                @endforeach
              </select>
              @error('id_vitamin')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="col-md-4">
              <label for="bulan">Umur (Bulan)</label>
              <input type="number" placeholder="ex: 1,2,3,4..." class="form-control fs-normal form-spacer-20x15 @error('bulan') is-invalid @enderror" id="bulan" name="bulan" data-toggle="tooltip" data-placement="right" title="Bulan Bayi" value="{{ $vitaminization->bulan }}" autofocus>
              @error('bulan')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="col-md-4">
              <label for="date">Tanggal Vitaminisasi</label>
              <input type="date" class="form-control fs-normal form-spacer-20x15 @error('date') is-invalid @enderror" id="date" name="date" data-toggle="tooltip" data-placement="right" title="Date Lengkap Bayi" value="{{ $vitaminization->date }}" autofocus>
              @error('date')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
          </div>

          <input type="hidden" value="{{ $vitaminization->baby->id }}" name="id_baby">
          <input type="hidden" value="{{ $vitaminization->id }}" name="id_vitaminization">

          <button type="submit" class="btn btn-primary font-medium float-right py-2 px-5">Update</button>
         </form>
      </div>
   </div>
</div>
<!-- /.container-fluid -->
@endsection
