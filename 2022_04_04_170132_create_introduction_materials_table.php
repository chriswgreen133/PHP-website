<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('introduction_materials', function (Blueprint $table) {
            $table->increments('comments_id');
            $table->text('comment_name');
            $table->string('comment_tone');
            $table->boolean('is_verified');
            $table->string('firstname');
            $table->string('surname');
            $table->string('email');
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
        Schema::dropIfExists('introduction_materials');
    }
};
