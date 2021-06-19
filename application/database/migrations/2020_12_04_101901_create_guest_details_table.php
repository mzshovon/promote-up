<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGuestDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('guest_details', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('mobile');
            $table->string('address');
            $table->string('name');
            $table->string('email');
            $table->string('business');
            $table->string('payment_amount');
            $table->string('message')->nullable();
            $table->bigInteger('status')->default('0');
            $table->string('boosting_level')->nullable();
            $table->bigInteger('payment')->default('0');
            $table->bigInteger('user_id')->default('0');
            $table->string('services')->nullable();
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
        Schema::dropIfExists('guest_details');
    }
}
