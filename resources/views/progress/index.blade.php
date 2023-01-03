@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Baby Progress</span></p>
   <div class="row">
      <div class="col-md-6">
        <h5 class="m-0 font-weight-bold color-primary mb-2">Pertumbuhan Bayi</h5>
        <p class="mb-4">Halaman ini untuk memantau pertumbuhan bayi.</p>
      </div>
      <div class="col-md-6 d-flex justify-content-end">
         <a href="/baby/{{ $baris->id }}" class="btn btn-primary mx-1 py-2 shadow-sm fs-normal align-self-center mt-n3">
            <span class="fas fa-arrow-left"></span> Kembali
         </a>

         <button type="button" data-toggle="modal" data-target="#addProgressModal" class="btn btn-primary py-2 shadow-sm fs-normal align-self-center mt-n3">
            <span class="fas fa-chart-pie"></span> Tambah Pertumbuhan
         </button>
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

   @if($session != 'Staff2')
   <!-- Area Chart -->
   <?php error_reporting(0); ?>
   <form action="" method="GET">
   <div class="form-group row">
      <div class="col-md-10">
        <select name="_age" class="form-control" id="">
          <option value="1" {{ ($_GET['_age'] == 1) ? 'selected' : '' }}>0 - 12 Bulan</option>
          <option value="2" {{ ($_GET['_age'] == 2) ? 'selected' : '' }}>12 - 24 Bulan</option>
          <option value="3" {{ ($_GET['_age'] == 3) ? 'selected' : '' }}>24 - 36 Bulan</option>
          <option value="4" {{ ($_GET['_age'] == 4) ? 'selected' : '' }}>36 - 48 Bulan</option>
          <option value="5" {{ ($_GET['_age'] == 5) ? 'selected' : '' }}>48 - 60 Bulan</option>
        </select>
      </div>
      <div class="col-md-2">
        <button class="btn btn-primary btn-block">Submit</button>
      </div>
    </div>
    </form>
   <div class="card shadow border-0 mb-4">
      <!-- Card Header - Dropdown -->
      <div class="card-header bg-white py-3 d-flex flex-row align-items-center justify-content-between">
         <h6 class="m-0 font-weight-bold color-primary">Berat Badan menurut usia {{ $umur }} ({{ $kelamin }} <i class="{{ $jk }}"></i>)</h6>
         <div class="dropdown no-arrow">
            {{-- <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
            </a> --}}
            <div class="dropdown-menu dropdown-menu-right shadow-sm animated--fade-in" aria-labelledby="dropdownMenuLink">
               <div class="dropdown-header">Dropdown Header:</div>
               <a class="dropdown-item active" href="#">Action</a>
               <a class="dropdown-item" href="#">Another action</a>
               <div class="dropdown-divider"></div>
               <a class="dropdown-item" href="#">Something else here</a>
            </div>
         </div>
      </div>
      <!-- Card Body -->
      <div class="card-body">
         <div class="chart-area">
         <canvas id="myAreaChart"></canvas>
         </div>
      </div>
	  <!--panjang badan-->
	  <div class="card-header bg-white py-3 d-flex flex-row align-items-center justify-content-between">
         <h6 class="m-0 font-weight-bold color-primary">Panjang Badan menurut usia {{ $umur }} ({{ $kelamin }} <i class="{{ $jk }}"></i>)</h6>
         <div class="dropdown no-arrow">
            {{-- <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
               <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
            </a> --}}
            <div class="dropdown-menu dropdown-menu-right shadow-sm animated--fade-in" aria-labelledby="dropdownMenuLink">
               <div class="dropdown-header">Dropdown Header:</div>
               <a class="dropdown-item active" href="#">Action</a>
               <a class="dropdown-item" href="#">Another action</a>
               <div class="dropdown-divider"></div>
               <a class="dropdown-item" href="#">Something else here</a>
            </div>
         </div>
      </div>

      <div class="card-body">
        <div class="chart-area">
          <canvas id="myAreaChart2"></canvas>
        </div>
      </div>

   </div>
   @endif

   <!-- DataTables Example -->
   <div class="card shadow border-0 mb-4">
      <div class="card-header bg-white py-3">
        <h6 class="m-0 font-weight-bold color-primary">{{ $baris->nama }}</h6>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>Bulan Ke-</th>
                <th>Tinggi Bayi</th>
                <th>Berat Bayi</th>
                <th>Lingkar Kepala</th>
              </tr>
            </thead>
            <tbody>
               @if($progress || !$progress)
                    <tr>
                        <td class="text-center">0</td>
                        <td>{{ $baris->panjang_bayi}} cm</td>
                        <td>{{ $baris->berat_bayi }} kg</td>
                        <td>{{ $baris->lingkar_kepala }} cm</td>
                    </tr>
               @endif
               @if($progress)
                    @foreach($progress as $p)
                    <tr>
                        <td class="text-center">{{ $p->bulan_ke }}</td>
                        <td>{{ $p->panjang_bayi }} cm</td>
                        <td>{{ $p->berat_bayi }} kg</td>
                        <td>{{ $p->lingkar_kepala }} cm</td>
                    </tr>
                    @endforeach
               @endif
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <?php
    if($progress == null){
       $bulan_ke = 1;
    }else{
       $bulan_ke = count($progress)+1;
    }
    ; ?>

   <!-- DataTables Example
   <div class="card shadow border-0 mb-4">
      <div class="card-header bg-white py-3">
         <h6 class="m-0 font-weight-bold color-primary">Data Pertumbuhan Bayi</h6>
      </div>
      <div class="card-body container-fluid">
         <form method="post" action="{{ url('/baby/progress') }}">
            @csrf
            {{-- <input type="hidden" name="bulan_ke" value="{{ $bulan_ke }}"> --}}
            <input type="hidden" name="id_bayi" value="{{ $baris->id }}">
            <div class="form-group">
               <label for="panjang_bayi">Tinggi Bayi (cm)</label>
               <input type="number" class="form-control @error('panjang_bayi') is-invalid @enderror" name="panjang_bayi" id="panjang_bayi" data-toggle="tooltip" data-placement="right" title="Panjang Bayi Sekarang" placeholder="Tinggi sekarang" min="1" step="any">
               @error('panjang_bayi')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="form-group">
               <label for="berat_bayi">Berat Bayi (kg)</label>
               <input type="number" class="form-control @error('berat_bayi') is-invalid @enderror" name="berat_bayi" id="berat_bayi" data-toggle="tooltip" data-placement="right" title="Berat Bayi Sekarang" placeholder="Berat sekarang" min="1" step="any">
               @error('berat_bayi')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <div class="form-group">
               <label for="bulan_ke">Bulan Ke-</label>
               <input type="number" class="form-control @error('bulan_ke') is-invalid @enderror" name="bulan_ke" id="bulan_ke" min="1" data-toggle="tooltip" data-placement="right" title="Berat Bayi Sekarang" placeholder="Berat sekarang" min="1" step="any">
               @error('bulan_ke')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
            </div>
            <button type="submit" class="btn btn-block btn-primary">Simpan</button>
         </form>
      </div>
   </div>
</div> -->


<!-- Add Progress Modal-->
<div class="modal fade" id="addProgressModal" tabindex="-1" role="dialog" aria-labelledby="addProgressLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
     <div class="modal-content fs-normal border-0">
       <div class="modal-header mx-3">
         <h5 class="modal-title fs-medium" id="addProgressLabel">Tambah Progress Bayi</h5>
         <button class="close" type="button" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">×</span>
         </button>
       </div>
       <form method="post" action="{{ url('/baby/progress') }}">
       @csrf
       <div class="modal-body mx-3 mt-2">
           {{-- <input type="hidden" name="bulan_ke" value="{{ $bulan_ke }}"> --}}
           <input type="hidden" name="id_bayi" value="{{ $baris->id }}">
           <div class="form-group">
              <label for="panjang_bayi">Tinggi Bayi (cm)</label>
              <input type="number" class="form-control rad-10 form-spacer-20x15 fs-normal @error('panjang_bayi') is-invalid @enderror" name="panjang_bayi" id="panjang_bayi" data-toggle="tooltip" data-placement="right" title="Panjang Bayi Sekarang" placeholder="Tinggi sekarang" min="1" step="any">
              @error('panjang_bayi')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
           </div>
           <div class="form-group">
              <label for="berat_bayi">Berat Bayi (kg)</label>
              <input type="number" class="form-control rad-10 form-spacer-20x15 fs-normal @error('berat_bayi') is-invalid @enderror" name="berat_bayi" id="berat_bayi" data-toggle="tooltip" data-placement="right" title="Berat Bayi Sekarang" placeholder="Berat sekarang" min="1" step="any">
              @error('berat_bayi')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
           </div>
           <div class="form-group">
              <label for="lingkar_kepala">Lingkar Kepala (cm)</label>
              <input type="number" class="form-control rad-10 form-spacer-20x15 fs-normal @error('lingkar_kepala') is-invalid @enderror" name="lingkar_kepala" id="lingkar_kepala" data-toggle="tooltip" data-placement="right" title="Lingkar Kepala Sekarang" placeholder="Lingkar Kepala sekarang" min="1" step="any">
              @error('lingkar_kepala')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
           </div>
           <div class="form-group">
              <label for="bulan_ke">Bulan Ke-</label>
              <input type="number" readonly class="form-control rad-10 form-spacer-20x15 fs-normal @error('bulan_ke') is-invalid @enderror" name="bulan_ke" id="bulan_ke" min="1" data-toggle="tooltip" data-placement="right" title="Berat Bayi Sekarang" value="{{ $bulan_ke }}" placeholder="Bulan Ke" min="1" step="any">
              @error('bulan_ke')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
           </div>
       </div>
       <div class="modal-footer mx-3">
         <button class="btn btn-secondary fs-normal py-2 px-3" type="button" data-dismiss="modal">Cancel</button>
         <button type="submit" class="btn btn-primary fs-normal py-2 px-3">Simpan</button>
       </form>
       </div>
     </div>
   </div>
 </div>
<!-- Add Progress Modal-->

<script src="{{ asset('/vendor/chart.js/Chart.min.js') }}"></script>
<!-- /.container-fluid -->
@endsection
