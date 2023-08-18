@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Graduations</span></p>

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
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tabel Data Kelulusan</h5>
      <p class="mb-3 float-left">Halaman ini untuk pengelolaan data kelulusan bayi > 5 tahun</p>
      <a class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm" href="/baby/export">
       <span class="fas fa-file-excel px-1"></span> Export ke Excel</a>

      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>Nama Bayi</th>
              <th>Nama Ibu</th>
              <th>NIK Bayi</th>
              <th>NO KMS</th>
              <th>Tangal Lahir</th>
              <th>Umur</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach($babies as $baby)
            <tr>
              <td class="text-center">{{ $loop->iteration }}</td>
              <td>{{ $baby->nama }}</td>
              <td>{{ $baby->parents->nama_ibu }}</td>
              <td>{{ ($baby->nik_bayi == null) ? 0 : $baby->nik_bayi }}</td>
              <td>{{ ($baby->no_kms == null) ? 0 : $baby->no_kms }}</td>
              <td>{{ date('d/m/Y', $baby->tanggal_lahir) }}</td>
              <td>
                {{-- {{ $birth = now()->format('m/Y') - date('m/Y', $baby->tanggal_lahir) }} --}}
                {{ \App\Http\Controllers\BabiesController::get_birtdate($baby->tanggal_lahir) }}
              </td>
              <td class="text-center">
                @if ($baby->no_kms == null)
                  <a href="{{ url('/baby').'/'.$baby->id }}" class="btn fs-small btn-success text-decoration-none">
                    <span class="fa fa-fw fa-check mx-1"></span>
                    Telah Lulus
                  </a>
                @elseif(\App\Http\Controllers\BabiesController::get_birtdate($baby->tanggal_lahir) >= 5)
                  <a href="/graduation/update/{{ $baby->id }}" onclick="return confirm('Apakah yakin balita ini diluluskan?')" class="btn fs-small btn-info text-decoration-none">
                    <span class="fa fa-fw fa-user-graduate mx-1"></span>
                    Luluskan
                  </a>
                @else
                  <a href="#" class="btn fs-small btn-warning text-decoration-none">
                    <span class="fa fa-fw fa-spinner mx-1"></span>
                    Progress
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
