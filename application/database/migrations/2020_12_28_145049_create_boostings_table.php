<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBoostingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boostings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('page_name');
            $table->string('dollar_cost');
            $table->string('taka_cost');
            $table->string('payment');
            $table->string('payment_owner');
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
        Schema::dropIfExists('boostings');
    }
}
