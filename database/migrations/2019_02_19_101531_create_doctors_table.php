<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctors', function (Blueprint $table) {
          $table->increments('id');
          $table->string('first_name',50);
          $table->string('last_name',40);
          $table->string('password',250);
          $table->string('email')->unique();
          $table->bigInteger('job_id');
          $table->bigInteger('phone_number');
          $table->string('hospital_name',100);
          $table->boolean('isdelete',0)->default(0);
          $table->integer('created_by');
          $table->integer('updated_by');
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
        Schema::dropIfExists('doctors');
    }
}
