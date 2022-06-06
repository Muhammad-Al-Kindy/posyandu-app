<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnOnProgressBabiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('progress_babies', function (Blueprint $table) {
            $table->float('lingkar_kepala')->after('berat_bayi')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('progress_babies', function (Blueprint $table) {
            $table->dropColumn('lingkar_kepala');
        });
    }
}
