<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePhoneLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('phone_locations', function (Blueprint $table) {
            $table->id(); // Primary key
            $table->decimal('latitude', 10, 7); // Latitude with up to 7 decimal places
            $table->decimal('longitude', 10, 7); // Longitude with up to 7 decimal places
            $table->decimal('speed', 8, 2); // Speed with up to 2 decimal places
            $table->unsignedBigInteger('id_phone'); // Foreign key for phone id

            // Foreign key constraint (assuming there's a 'phones' table with an 'id' column)
            $table->foreign('id_phone')
                ->references('id')
                ->on('phones')
                ->onDelete('cascade');

            $table->timestamps(); // `created_at` and `updated_at` columns
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('phone_locations');
    }
}
