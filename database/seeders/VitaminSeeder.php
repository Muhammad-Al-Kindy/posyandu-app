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
                'name' => 'Vitamin A',
                'description' => 'Vitamin A untuk 0-11 bulan dengan warna merah',
            ],
            [
                'name' => 'Vitamin A Plus',
                'description' => 'Vitamin A untuk usia 12-60 bulan dengan warna biru',
            ],
        ];

        DB::table('vitamin')->insert($vitamin);
    }
}
