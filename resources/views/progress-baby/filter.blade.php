@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Progress Baby</span></p>

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
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tabel Data Bayi</h5>
      <p class="mb-3 float-left">Halaman ini untuk pengelolaan data bayi</p>
      <form action="{{ route('progress.export') }}" method="GET">
        <button type="submit" class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm" href="/progress/export">
        <span class="fas fa-file-excel px-1"></span> Export ke Excel</button>
        <input type="hidden" value="{{ $month }}" name="month">
        <input type="hidden" value="{{ $year }}" name="year">
      </form>
      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>NIK Bayi</th>
              <th>Nama Orangtua</th>
              <th>Alamat</th>
              <th>Nama Anak</th>
              <th>Jenis Kelamin</th>
              <th>Tanggal Ukur</th>
              <th>Tanggal Lahir</th>
              <th>BB Lahir (Kg)</th>
              <th>TB Lahir (Cm)</th>
              <th>Lingkar Kepala (Cm)</th>
              <th>Umur</th>
            </tr>
          </thead>
          <tbody>
            @foreach($progress as $report)
            @php
                $dates = strtotime($report->created_at)
            @endphp
            <tr>
              <td class="text-center">{{ $loop->iteration }}</td>
              <td>{{ $report->nik_bayi }}</td>
              <td>{{ $report->parents->nama_ayah}} / {{ $report->parents->nama_ibu}}</td>
              <td>{{ $report->parents->alamat }}</td>
              <td>{{ $report->nama }}</td>
              <td>{{ ($report->jenis_kelamin == 1) ? 'L' : 'P' }}</td>
              <td>{{ date("d M Y", $dates) }}</td>
              <td>{{ date("d M Y", $report->tanggal_lahir) }}</td>
              <td>{{ $report->berat_bayi }}</td>
              <td>{{ $report->panjang_bayi }}</td>
              <td>{{ $report->lingkar_kepala }}</td>
              <td>{{ \App\Http\Controllers\BabiesController::get_birtdate($report->tanggal_lahir) }}</td>
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
