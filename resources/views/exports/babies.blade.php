@extends('exports.layouts.main')

@section('content')
  <p><b>Data Bayi pada tanggal - {{ $date }}</b></p>
  <table border="1">
    <thead>
      <tr>
        <th>NO</th>
        <th>NIK</th>
        <th>Nama Sasaran</th>
        <th>Tanggal Lahir / Umur (Bulan)</th>
        <th>Jenis Kelamin</th>
        <th>Nama Ibu</th>
        <th>Alamat</th>
        <th>Telepon</th>
      </tr>
    </thead>
    <tbody>
        @foreach($babies as $row)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ $row->nik }}</td>
          <td>{{ ucwords($row->nama) }}</td>
          <td>{{ date('d-m-Y', $row->tanggal_lahir) }} / {{ \App\Http\Controllers\BabiesController::get_birtdate_month($row->tanggal_lahir) }}</td>
          <td>{{ ($row->jenis_kelamin == 1) ? 'L' : 'P' }}</td>
          <td>{{ $row->parents->nama_ibu }}</td>
          <td>{{ $row->parents->alamat }}</td>
          <td>{{ $row->parents->no_hp }}</td>
        </tr>
        @endforeach
    </tbody>
  </table>
@endsection