<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVitaminDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vitamin_detail', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('vitamin_id')->nullable();
            $table->foreign('vitamin_id')->references('id')->on('vitamin');
            
            $table->integer('start_age')->nullable();
            $table->integer('end_age')->nullable();
            $table->text('information')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vitamin_detail');
    }
}
