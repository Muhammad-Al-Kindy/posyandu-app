<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class VitaminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        $vitamin = [
            [
                'name' => 'Vitamin A - Biru',
                'description' => 'Vitamin A untuk 0-11 bulan dengan warna biru',
                'start_range_age' => 0,
                'end_range_age' => 11
            ],
            [
                'name' => 'Vitamin A - Merah',
                'description' => 'Vitamin A untuk usia 12-60 bulan dengan warna merah',
                'start_range_age' => 12,
                'end_range_age' => 60
            ],
        ];

        DB::table('vitamin')->insert($vitamin);
    }
}
