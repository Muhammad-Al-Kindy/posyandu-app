@extends('exports.layouts.main')

@section('content')
  <p><b>Data Vaksin pada tanggal - {{ $date }}</b></p>
  <table border="1">
    <thead>
      <tr>
        <th>NO</th>
        <th>Nama Vaksin</th>
        <th>Deskripsi</th>
      </tr>
    </thead>
    <tbody>
        @foreach($vaccines as $vaccine)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ ucwords($vaccine->name) }}</td>
          <td>{{ strtolower($vaccine->description) }}</td>
        </tr>
        @endforeach
    </tbody>
  </table>
@endsection