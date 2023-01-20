
    <p><b>Data Bayi pada tanggal - {{ $date }}</b></p>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>NIK</th>
                <th>Nama Bayi</th>
                <th>Tanggal Lahir / Umur</th>
                <th>Jenis Kelamin</th>
                <th>Nama Ibu</th>
                <th>Alamat</th>
                <th>Telepon</th>
            </tr>
        </thead>
        <tbody>
            @foreach($babies as $baby)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $baby->nik_bayi }}</td>
                <td>{{ ucwords($baby->nama) }}</td>
                <td>{{ date('d-m-Y', $baby->tanggal_lahir) }} / {{ \App\Http\Controllers\BabiesController::get_birtdate($baby->tanggal_lahir) }}</td>
                <td>{{ ($baby->jenis_kelamin == 1) ? 'L' : 'P' }}</td>
                <td>{{ $baby->parents->nama_ibu }}</td>
                <td>{{ $baby->parents->alamat }}</td>
                <td>{{ '0' . $baby->parents->no_hp }}</td>
            </tr>
           @endforeach
        </tbody>
    </table>
