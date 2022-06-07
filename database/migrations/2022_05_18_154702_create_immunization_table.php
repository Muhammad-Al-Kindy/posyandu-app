<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateImmunizationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('immunization', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_baby');
            $table->unsignedBigInteger('id_vaccine');
            $table->integer('bulan');
            $table->date('date');
            $table->timestamps();

            $table->foreign('id_baby')->references('id')->on('babies')->onDelete('cascade');
            $table->foreign('id_vaccine')->references('id')->on('vaccine')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('immunization');
    }
}
