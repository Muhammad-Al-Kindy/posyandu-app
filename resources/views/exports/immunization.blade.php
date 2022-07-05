@extends('exports.layouts.main')

@section('content')
  <table border="1">
    <thead>
      <tr>
        <th rowspan="2">NO</th>
        <th rowspan="2">Nama Balita</th>
        <th rowspan="2">Tanggal Lahir</th>
        <th rowspan="2">Nama Ortu</th>
        
        <th colspan="{{ $vaccines->count() }}">Imunisasi</th>
      </tr>
      <tr>
        @foreach ($vaccines as $item)
          <th>{{ $item->name }}</th>
        @endforeach
      </tr>
    </thead>
    <tbody>
        @foreach($immunizations as $row)
        <tr>
          <td>{{ $loop->iteration }}</td>
          <td>{{ $row->baby->nama }}</td>
          <td>{{ date('d-m-Y', $row->baby->tanggal_lahir) }}</td>
          <td>{{ $row->baby->parents->nama_ibu.' / '.$row->baby->parents->nama_ayah }}</td>
          @foreach ($vaccines as $item)
            @if (\App\Http\Controllers\ImmunizationController::get_immun_date($item->id, $row->id_baby) != null)
              <td>{{ $row->date }}</td>
            @else 
              <td></td>
            @endif
          @endforeach
        </tr>
        @endforeach
    </tbody>
  </table>
@endsection