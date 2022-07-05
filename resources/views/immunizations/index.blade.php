@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Immunizations</span></p>

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
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tabel Catatan Imunisasi Bayi</h5>
      <p class="mb-3 float-left">Halaman ini untuk pengelolaan data bayi</p>
      <a class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm" href="/immunization/export">
        <span class="fas fa-file-excel px-1"></span> Export ke Excel</a>

      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>Nama Bayi</th>
              <th>Nama Ibu</th>
              <th>Usia Bayi</th>
              <th>Imunisasi</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach($babies as $baby)
            <tr>
              <td class="text-center">{{ $loop->iteration }}</td>
              <td>{{ $baby->nama }}</td>
              <td>{{ $baby->parents->nama_ibu }}</td>
              <td>{{ \App\Http\Controllers\BabiesController::get_birtdate($baby->tanggal_lahir) }}</td>
              <td>
                @if ($baby->immunization->count() == 0)
                  <button type="button" class="btn btn-danger fs-small"> <span class="fas fa-times"></span> Belum Pernah</button>
                @else
                  <button type="button" class="btn btn-primary fs-small"><span class="fas fa-check"></span> <b class="font-medium">{{ $baby->immunization->count() }}</b>x Imunisasi</button>
                @endif
              </td>
              <td class="text-center">
                <a href="{{ url('/immunization').'/'.$baby->id.'/show' }}" class="btn fs-small btn-info text-decoration-none">
                  <span class="fa fa-fw fa-syringe mx-1"></span>
                  Imunisasi
                </a>
                {{-- <a href="#" class="btn-sm btn-warning rounded-circle"><img class="mt-n1" src="img/edit.svg"></a>
                <a href="#" class="btn-sm btn-danger rounded-circle"><img class="mt-n1" src="img/delete.svg"></a> --}}
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
