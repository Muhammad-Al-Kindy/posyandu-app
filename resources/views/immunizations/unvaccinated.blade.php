@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Unvaccinated</span></p>
  
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
      <h5 class="m-0 font-weight-bold color-primary mb-2">Imunisasi Bayi - {{ $vaccine->name }}</h5>
      <p class="mb-3 float-left">Halaman ini untuk data bayi yang belum / sudah di vaksin</p>
      <a href="{{ url('/vaccine') }}" class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm"> <span class="fas fa-arrow-left"></span> Kembali</a>
      
      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>Nama Bayi</th>
              <th>Nama Ibu</th>
              <th>Nama Ayah</th>
              <th>Imunisasi</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach($babies as $baby)
            <tr>
              <td class="text-center">{{ $loop->iteration }}</td>
              <td>{{ $baby->nama_bayi }}</td>
              <td>{{ $baby->nama_ibu }}</td>
              <td>{{ $baby->nama_ayah }}</td>
              <td>
                @if ($baby->id_vaccine == $vaccine->id)
                  <button type="button" class="btn btn-success fs-small"><span class="fas fa-check"></span> Sudah</button>
                @else
                  <button type="button" class="btn btn-danger fs-small"> <span class="fas fa-times"></span> Belum</button>
                @endif
              </td>
              <td class="text-center">
                @if ($baby->id_vaccine == $vaccine->id)
                  <button type="button" class="btn btn-primary fs-small"> <span class="fas fa-check"></span> Terimunisasi</button>
                @else
                  <a href="{{ url('/immunization/add').'/'.$baby->id_bayi.'/'.$vaccine->id }}" class="btn fs-small btn-warning text-decoration-none">
                    <span class="fa fa-fw fa-syringe mx-1"></span>
                    Imunisasi
                  </a>
                @endif
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
