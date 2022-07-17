<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnRangeOnVitaminTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('vitamin', function(Blueprint $table){
            $table->integer('start_range_age')->after('description')->nullable();
            $table->integer('end_range_age')->after('start_range_age')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('vitamin', function(Blueprint $table){
            $table->dropColumn('start_range_age');
            $table->dropColumn('end_range_age');
        });
    }
}
