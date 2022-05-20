@extends('layout.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container fs-normal">

   <!-- Page Heading -->
   <p class="mb-3">Tabel / Data / <span class="color-primary">Change Data</span></p>
  <div class="row">
    <div class="col-md-6">
      <h5 class="m-0 font-weight-bold color-primary mb-2">Ubah Akun</h5>
      <p class="mb-4">Hati-hati dalam input data. Beberapa data tidak dapat diubah setelah diinput!.</p>
    </div>
    <div class="col-md-6 d-flex justify-content-end">
      <a href="/home" class="btn btn-primary mx-2 py-2 shadow-sm fs-normal align-self-center px-3 mt-n3">Kembali</a>
    </div>
  </div>

   <!-- DataTales Example -->
   <div class="card shadow border-0 mb-4">
      <div class="card-header bg-white py-3">
         <h6 class="m-0 font-weight-bold color-primary">Data Akun</h6>
      </div>
      <div class="card-body container-fluid">
         <form method="post" action="{{ url('/home/'. $user->id) }}">
          @csrf
          @method('PUT')
          <div class="form-group">
            <label for="nama">Nama Lengkap</label>
            <input type="text" placeholder="ex: Wahyu Aji" class="form-control fs-normal form-spacer-20x15 @error('nama') is-invalid @enderror" id="nama" name="nama" data-toggle="tooltip" data-placement="right" title="Nama Lengkap Bayi" value="{{ $user->name }}">
            @error('nama')<div class="invalid-feedback ml-1">Bidang ini wajib diisi</div>@enderror
         </div>
         <div class="form-group">
            <label for="email">Alamat Email</label>
            <input type="text" placeholder="ex: staff@posyandu.com" readonly class="form-control fs-normal form-spacer-20x15 @error('email') is-invalid @enderror" id="email" name="email" data-toggle="tooltip" data-placement="right" title="Alamat email" value="{{ $user->email }}">
            @error('email')<div class="invalid-feedback ml-1">{{ $message }}</div>@enderror
         </div>
         <div class="form-group row">
            <div class="col-md-4">
             <label for="role">Role</label>
             <select id="role" name="role" class="form-control-select fs-normal form-spacer-10x8 @error('role') is-invalid @enderror" data-toggle="tooltip" data-placement="right" title="Golongan Darah Bayi">
                 <option selected value="Staff2" {{ ($user->role == 'Staff2') ? 'selected' : '' }}>Staff (Tanpa Akses Chart)</option>
                 <option value="Staff" {{ ($user->role == 'Staff') ? 'selected' : '' }}>Staff</option>
                 <option value="Admin" {{ ($user->role == 'Admin') ? 'selected' : '' }}>Admin</option>
             </select>
             @error('role')<div class="invalid-feedback ml-1">{{ $message }}</div>@enderror
            </div>

            <div class="col-md-4">
             <label for="password">Password</label>
             <input type="text" class="form-control fs-normal form-spacer-20x15 @error('password') is-invalid @enderror" id="password" readonly name="password" placeholder="Password" data-toggle="tooltip" data-placement="right" title="Password" value="{{ $user->password }}">
             @error('password')<div class="invalid-feedback ml-1">{{ $message }}</div>@enderror
            </div>

            <div class="col-md-4">
             <label for="konfirmasi_password">Konfirmasi Password</label>
             <input type="text" readonly class="form-control fs-normal form-spacer-20x15 @error('konfirmasi_password') is-invalid @enderror" id="konfirmasi_password" placeholder="Password" value="{{ $user->password }}" name="konfirmasi_password" data-toggle="tooltip" data-placement="right" title="Konfirmasi Password">
             @error('konfirmasi_password')<div class="invalid-feedback ml-1">{{ $message }}</div>@enderror
            </div>
         </div>
          
          <button type="submit" class="btn btn-primary font-medium float-right py-2 px-5">Update</button>
                
         </form>
      </div>
   </div>
</div>
<!-- /.container-fluid -->
@endsection