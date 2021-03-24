<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAppointementTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('appointment', function (Blueprint $table) {
            $table->increments('appointment_id');
            $table->dateTime('appointment_date');
            $table->string('appointment_hour');
            $table->string('place_appointment');
            $table->integer('service_id');
            $table->integer('hospital_id');
            $table->integer('patient_id');
            $table->integer('prescriteur_id');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('appointment');
    }
}
