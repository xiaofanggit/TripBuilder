<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flights', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('trip_id')->index()->unsigned();
            $table->integer('start_airport')->index()->unsigned();
            $table->integer('end_airport')->index()->unsigned();
            $table->unique(array('trip_id', 'start_airport', 'end_airport'));
            $table->timestamps();
        });
        Schema::table('flights', function($table) {
            $table->foreign('trip_id')->references('id')->on('trips')->onDelete('cascade');
            $table->foreign('start_airport')->references('id')->on('airports')->onDelete('cascade');
            $table->foreign('end_airport')->references('id')->on('airports')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
