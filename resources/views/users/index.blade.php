@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

  <!-- Page Heading -->
  <p class="mb-3">Tabel / Data / <span class="color-primary">Users</span></p>

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
      <h5 class="m-0 font-weight-bold color-primary mb-2">Tabel Data Akun</h5>
      <p class="mb-3 float-left">Halaman ini untuk mengelola akun staff dan admin</p>
      <a href="{{ url('/home/create') }}" class="btn btn-primary py-2 px-3 fs-normal float-right mb-3 shadow-sm"> <span class="fas fa-user-plus mx-1"></span> Tambah Data</a>


      <div class="table-responsive">
        <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th class="text-center">NO</th>
              <th>Nama</th>
              <th>Email</th>
              <th>Role</th>
              <th>Action</th>
            </tr>
         </thead>
         <tbody>
            @foreach($users as $user)
            <tr>
               <td class="text-center">{{ $loop->iteration }}</td>
               <td>{{ ucwords($user->name) }}</td>
               <td>{{ strtolower($user->email) }}</td>
               <td>
                  @if($user->role == 'Staff2')
                     Staff (Tanpa Akses Chart)
                  @else
                     {{ $user->role }}
                  @endif
               </td>
               <td class="text-center">
                 <form action="/home/{{ $user->id }}" method="POST" onsubmit="return confirm('Anda yakin akan menghapus data {{ $user->name }}')">
                  <a href="/home/{{ $user->id }}/edit" class="btn btn-sm fs-small btn-info"><i class="fas fa-user-edit mx-1"></i> Ubah</a>
                  
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
