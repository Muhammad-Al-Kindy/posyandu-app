<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVitaminizationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vitaminization', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_baby');
            $table->unsignedBigInteger('id_vitamin');
            $table->integer('bulan');
            $table->date('date');
            $table->timestamps();

            $table->foreign('id_baby')->references('id')->on('babies')->onDelete('cascade');
            $table->foreign('id_vitamin')->references('id')->on('vitamin')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vitaminization');
    }
}
