<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PhoneLocation extends Model
{
    protected $table = 'phone_locations';

    protected $primaryKey = 'id';

    protected $keyType = 'int';

    // Define the fillable fields
    protected $fillable = [
        'latitude',
        'longitude',
        'speed',
        'id_phone',
    ];

    // Define any relationships with other models
    public function phone()
    {
        return $this->belongsTo('App\Models\Phone', 'id_phone', 'id');
    }

    // Any additional model methods or scopes you might want to define
}

