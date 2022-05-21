@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Add Data</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tambah Imunisasi</h5>
      <p class="mb-4">Hati-hati dalam input data. Beberapa data tidak dapat diubah setelah diinput!.</p>
    </div>
    <div class="col-md-6 d-flex justify-content-end">
      {{-- vaccine/4/unvaccinated --}}
      <a href="/vaccine/{{ $vaccines->id }}/unvaccinated" class="btn btn-primary mx-2 py-2 shadow-sm fs-normal align-self-center px-3 mt-n3">
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
         <h6 class="m-0 font-weight-bold color-primary">Data Imunisasi - {{ $vaccines->name }}</h6>
      </div>
      <div class="card-body container-fluid">
         <form method="post" action="/immunization/{{ $baby->id }}/add">
          @csrf
          <div class="form-group">
            <label for="name">Nama Bayi</label>
            <input type="text" placeholder="ex: BCG (Bacillus Calmette Guerin)" class="form-control fs-normal form-spacer-20x15 @error('name') is-invalid @enderror" id="name" name="name" data-toggle="tooltip" data-placement="right" title="name Lengkap Bayi" value="{{ $baby->nama }}" readonly autofocus>
            @error('name')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
          </div>
            
          <div class="form-group row">
            <div class="col-md-4">
              <label for="id_vaccine">Nama Jenis Vaksin</label>
              <input type="hidden" name="id_vaccine" value="{{ $vaccines->id }}">
              <input type="text" readonly class="form-control fs-normal form-spacer-20x15 @error('vaccine') is-invalid @enderror" id="vaccine" name="vaccine" data-toggle="tooltip" data-placement="right" title="Bulan Bayi" value="{{ $vaccines->name }}" autofocus>
              @error('id_vaccine')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="col-md-4">
              <label for="bulan">Umur (Bulan)</label>
              <input type="number" placeholder="ex: 1,2,3,4..." class="form-control fs-normal form-spacer-20x15 @error('bulan') is-invalid @enderror" id="bulan" name="bulan" data-toggle="tooltip" data-placement="right" title="Bulan Bayi" value="{{ old('bulan') }}" autofocus>
              @error('bulan')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="col-md-4">
              <label for="date">Tanggal Imunisasi</label>
              <input type="date" class="form-control fs-normal form-spacer-20x15 @error('date') is-invalid @enderror" id="date" name="date" data-toggle="tooltip" data-placement="right" title="Date Lengkap Bayi" value="{{ old('date') }}" autofocus>
              @error('date')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
          </div>
         
          <button type="submit" class="btn btn-primary font-medium float-right py-2 px-5">Tambah</button>
         </form>
      </div>
   </div>
</div>
<!-- /.container-fluid -->
@endsection