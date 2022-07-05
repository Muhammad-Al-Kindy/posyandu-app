@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Vitamin</span></p>

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
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tabel Data Vitamin</h5>
      <p class="mb-3 float-left">Halaman ini untuk mengelola data vitamin</p>
      <a href="{{ url('/vitamin/create') }}" class="btn btn-primary py-2 px-3 mx-2 fs-normal float-right mb-3 shadow-sm"> <span class="fas fa-user-plus mx-1"></span> Tambah Data</a>
      <a href="{{ url('/vitamin/export') }}" class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm"> <span class="fas fa-file-excel mx-1"></span> Export Excel</a>


      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>Nama Vitamin</th>
              <th>Deskripsi</th>
              <th>Belum di Vitaminisasi</th>
              <th>Action</th>
            </tr>
         </thead>
         <tbody>
            @foreach($vitamin as $vit)
            <tr>
               <td class="text-center">{{ $loop->iteration }}</td>
               <td>{{ ucwords($vit->name) }}</td>
               <td>{{ substr(strtolower($vit->description), 0, 50) }}....</td>
               <td class="text-center">
                <a href="/vitamin/{{ $vit->id }}/unvitaminated" class="btn btn-sm fs-small btn-success">
                  <span class="fas fa-notes-medical"></span>
                   Cek Data</a>
               </td>
               <td class="text-center">
                 <form action="/vitamin/{{ $vit->id }}" method="POST" onsubmit="return confirm('Anda yakin akan menghapus data {{ $vit->name }}')">

                  <a href="/vitamin/{{ $vit->id }}/show" class="btn btn-sm fs-small btn-primary"><i class="fas fa-eye mx-1"></i> Lihat</a>
                  <a href="/vitamin/{{ $vit->id }}/edit" class="btn btn-sm fs-small btn-info"><i class="fas fa-user-edit mx-1"></i> Ubah</a>
                  @csrf
                  @method('DELETE')
                  <button type="submit" class="btn fs-small btn-danger btn-sm"><i class="fas fa-trash mx-1"></i> Hapus</button>
                 </form>
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
