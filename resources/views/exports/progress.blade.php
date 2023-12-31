@extends('exports.layouts.main')

@section('content')
  <p><b>Data Export Bayi Bulan {{ $month }} tahun {{ $year }}</b></p>
  <table border="1">
    <thead>
        <tr>
            <th class="text-center">NO</th>
              <th>NIK Bayi</th>
              <th>Nama Orangtua</th>
              <th>Alamat</th>
              <th>Nama Anak</th>
              <th>Jenis Kelamin</th>
              <th>Tanggal Ukur</th>
              <th>Tanggal Lahir</th>
              <th>BB Sekarang (Kg)</th>
              <th>TB Sekarang (Cm)</th>
              <th>Lingkar Kepala (Cm)</th>
              <th>Umur</th>
        </tr>
    </thead>
      <tbody>
          @foreach($progress as $report)
              @php
                  $dates = strtotime($report->created_at)
              @endphp
              <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td>{{ "'".$report->baby->nik_bayi }}</td>
                <td>{{ $report->baby->parents->nama_ayah}} / {{ $report->baby->parents->nama_ibu}}</td>
                <td>{{ $report->baby->parents->alamat }}</td>
                <td>{{ $report->baby->nama }}</td>
                <td>{{ ($report->jenis_kelamin == 1) ? 'L' : 'P' }}</td>
                <td>{{ date("d M Y", $dates) }}</td>
                <td>{{ date("d M Y", $report->baby->tanggal_lahir) }}</td>
                <td>{{ $report->berat_bayi }}</td>
                <td>{{ $report->panjang_bayi }}</td>
                <td>{{ $report->lingkar_kepala }}</td>
                <td>{{ \App\Http\Controllers\BabiesController::measurement_date($report->baby->tanggal_lahir, $dates) }}</td>
              </tr>
          @endforeach
      </tbody>
  </table>
@endsection
