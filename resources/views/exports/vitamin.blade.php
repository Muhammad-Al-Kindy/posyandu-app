@extends('exports.layouts.main')

@section('content')
  <table border="1">
    <thead>
      <tr>
        <th>NO</th>
        <th>Nama Vaksin</th>
        <th>Deskripsi</th>
      </tr>
    </thead>
    <tbody>
        @foreach($vitamins as $row)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ ucwords($row->name) }}</td>
          <td>{{ strtolower($row->description) }}</td>
        </tr>
        @endforeach
    </tbody>
  </table>
@endsection