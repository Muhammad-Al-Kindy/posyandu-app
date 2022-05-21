<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class VaccineSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        $vaccine = [
            [
                'name' => 'Hepatitis B',
                'description' => 'Hepatitis B',
            ],
            [
                'name' => 'DPT',
                'description' => 'Diphtheria, Tetanus, Pertussis',
            ],
            [
                'name' => 'BCG',
                'description' => 'Bacillus Calmette-Guerin',
            ],
            [
                'name' => 'MR',
                'description' => 'Measles, Rubella',
            ],
            [
                'name' => 'DT/TD',
                'description' => 'Diphtheria, Tetanus, Pertussis, Tetanus, Diphtheria',
            ],
            [
                'name' => 'HPV',
                'description' => 'Human Papillomavirus',
            ],
            [
                'name' => 'HIB',
                'description' => 'Haemophilus influenzae type b',
            ],
            [
                'name' => 'OPV',
                'description' => 'Oral Polio Vaccine',
            ],
        ];
        DB::table('vaccine')->insert($vaccine);
    }
}
