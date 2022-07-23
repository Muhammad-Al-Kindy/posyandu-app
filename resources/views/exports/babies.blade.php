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
            <th>Panjang (Kg)</th>
            <th>Berat (Kg)</th>
            <th>Nama Ibu</th>
            <th>Alamat</th>
            <th>Telepon</th>
        </tr>
    </thead>
    <tbody>
        @foreach($progress as $row)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ "'" . $row->baby->nik_bayi }}</td>
                <td>{{ ucwords($row->baby->nama) }}</td>
                <td>{{ date('d-m-Y', $row->baby->tanggal_lahir) }} / {{ \App\Http\Controllers\BabiesController::get_birtdate_month($row->baby->tanggal_lahir) }}</td>
                <td>{{ ($row->baby->jenis_kelamin == 1) ? 'L' : 'P' }}</td>
                <td>{{ $row->panjang_bayi }}</td>
                <td>{{ $row->berat_bayi }}</td>
                <td>{{ $row->baby->parents->nama_ibu }}</td>
                <td>{{ $row->baby->parents->alamat }}</td>
                <td>{{ $row->baby->parents->no_hp }}</td>
            </tr>
        @endforeach
    </tbody>
  </table>
@endsection
