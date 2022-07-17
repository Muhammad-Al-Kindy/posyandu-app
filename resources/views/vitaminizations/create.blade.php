@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Add Data</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tambah Vitaminisasi</h5>
      <p class="mb-4">Hati-hati dalam input data. Beberapa data tidak dapat diubah setelah diinput!.</p>
    </div>
    <div class="col-md-6 d-flex justify-content-end">
      <a href="/vitaminization/{{ $baby->id }}/show" class="btn btn-primary mx-2 py-2 shadow-sm fs-normal align-self-center px-3 mt-n3">
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
         <form method="post" action="/vitaminization/{{ $baby->id }}">
          @csrf
          <div class="form-group">
            <label for="name">Nama Bayi</label>
            <input type="text" placeholder="ex: BCG (Bacillus Calmette Guerin)" class="form-control fs-normal form-spacer-20x15 @error('name') is-invalid @enderror" id="name" name="name" data-toggle="tooltip" data-placement="right" title="name Lengkap Bayi" value="{{ $baby->nama }}" readonly autofocus>
            @error('name')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
          </div>

          <div class="form-group row">
            <div class="col-md-4">
              <label for="id_vitamin">Nama Jenis Vitamin - {{ $month = \App\Http\Controllers\VitaminizationController::get_birtdate_month($baby->tanggal_lahir) }}</label>
                
                <select id="id_vitamin" disabled name="id_vitamin" placeholder="Nama Bayi" class="form-control-select fs-normal form-spacer-10x8 @error('id_vitamin') is-invalid @enderror" data-toggle="tooltip" data-placement="right">
                  @foreach ($vit as $row)
                    @if ($month >= 12)
                      <option value="{{ $row->id }}" {{ ($month >= 60) ? 'selected' : '' }}>{{ $row->name }}</option>
                    @else
                      <option value="{{ $row->id }}" {{ ($month >= $row->start_range_age && $month <= $row->end_range_age) ? 'selected' : '' }}>{{ $row->name }}</option>
                    @endif
                  @endforeach
                </select>
                @error('id_vitamin')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="col-md-4">
              <label for="bulan">Umur (Bulan)</label>
              <input readonly type="number" value="{{ \App\Http\Controllers\VitaminizationController::get_birtdate_month($baby->tanggal_lahir) }}" placeholder="ex: 1,2,3,4..." class="form-control fs-normal form-spacer-20x15 @error('bulan') is-invalid @enderror" id="bulan" name="bulan" data-toggle="tooltip" data-placement="right" title="Bulan Bayi" autofocus>
              @error('bulan')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="col-md-4">
              <label for="date">Tanggal Vitaminisasi</label>
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
