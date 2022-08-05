<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBabiesTable extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('babies', function (Blueprint $table) {
            $table->id();
            $table->string('nama', 256);
            // $table->string('no_kms', 256);
            // $table->string('nik_ibu', 20);
            $table->string('no_kms', 256)->nullable();
            $table->string('nik_bayi', 20)->nullable();
            $table->unsignedBigInteger('id_parent');
            $table->string('tempat_lahir', 256)->nullable();
            $table->integer('tanggal_lahir')->nullable();
            $table->integer('anak_ke')->nullable();
            $table->integer('jenis_kelamin')->nullable();
            $table->string('golongan_darah')->nullable();
            $table->decimal('panjang_bayi', 11, 2)->nullable();
            $table->decimal('berat_bayi', 11, 2)->nullable();
            $table->decimal('lingkar_kepala', 11, 2)->nullable();
            $table->timestamps();
            $table->softDeletes();

            // $table->foreign('nik_ibu')->references('nik_ibu')->on('parents')->onDelete('cascade');
            $table->foreign('id_parent')->references('id')->on('parents');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('babies');
    }
}
