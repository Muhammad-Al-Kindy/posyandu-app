<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnOnParentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('parents', function (Blueprint $table) {
            $table->string('no_kk', 20)->after('id')->nullable();
            $table->string('nik_ibu', 20)->after('no_kk')->nullable();
            $table->string('nik_ayah', 20)->after('nik_ibu')->nullable();
            $table->string('no_hp', 14)->after('pekerjaan_ayah')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('parents', function (Blueprint $table) {
            $table->dropColumn('no_kk');
            $table->dropColumn('nik_ibu');
            $table->dropColumn('nik_ayah');
            $table->dropColumn('no_hp');
        });
    }
}
