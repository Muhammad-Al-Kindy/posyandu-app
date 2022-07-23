@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Progress Babies</span></p>

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
        <h5 class="m-0 font-weight-bold color-primary mb-2">Export Progress Baby</h5>
        <p class="mb-3 float-left">Halaman ini untuk pengelolaan data progress bayi <br>  dengan filter bulan dan tahun</p>
    <form action="{{ route('progress.filter') }}" method="GET" enctype="multipart/form-data">
        <button class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm" type="submit">
            Filter
        </button>
        <div class="px-2 fs-normal float-right mb-3 col-md-3">
            @php
                $bulan = 1;
            @endphp
            <select id="month" name="month" class="form-control-select fs-normal py-2" data-toggle="tooltip" data-placement="right" title="Nama Bulan">
                @foreach ($month as $months)
                    <option value={{ $loop->iteration }}>{{ $months }}</option>
                @endforeach
            </select>
        </div>
        <div class="px-2 fs-normal float-right mb-3 col-md-2 w-75">
            <select id="year" name="year" class="form-control-select fs-normal py-2" data-toggle="tooltip" data-placement="right" title="Pilih Tahun">
                @foreach ($year as $years)
                    <option value={{ $years }}>{{ $years }}</option>
                @endforeach
            </select>
        </div>
    </form>
        {{-- <div class="px-3 fs-normal float-right mb-3 col-md-4">
            <label for="id_vitamin">Bulan</label>
            <select id="id_vitamin" name="id_vitamin" class="form-control-select fs-normal form-spacer-10x8" data-toggle="tooltip" data-placement="right" title="Nama Vitamin">
            </select>
        </div> --}}
    </div>
  </div>
</div>
<!-- /.container-fluid -->
@endsection
