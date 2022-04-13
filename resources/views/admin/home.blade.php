@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container">

  <!-- Page Heading -->
  <div class="row">
    <div class="col">

      <h1 class="h3 mb-2 text-gray-800">Data Akun Users</h1>
      <p class="mb-4">Halaman ini untuk mengelola akun staff dan admin</p>
    </div>
    <div class="col text-right">
      <a href="{{ url('/home/create') }}" class="btn btn-primary mt-3 shadow-sm">Tambah Data</a>
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
  <div class="card shadow mb-4">
    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
      <h6 class="m-0 font-weight-bold text-primary">Tabel Data Akun</h6>
   </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
            <th>NO</th>
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
                 <form action="{{ url('/home/'.$user->id) }}" method="POST" onsubmit="return confirm('Anda yakin akan menghapus data {{ $user->name }}')">
                  <a href="{{ url('/home/'.$user->id.'/edit') }}" class="btn btn-sm btn-info"><i class="fas fa-user-edit"></i></a>
                  
                  @csrf
                  @method('DELETE')
                  <button type="submit" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></button>
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
