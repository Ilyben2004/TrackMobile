<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
    use HasFactory;

    // Define the table name if it is different from the model name in plural form
    protected $table = 'phones';

    // Define the primary key if it is not 'id'
    protected $primaryKey = 'id';

    // Define the fields that are mass assignable
    protected $fillable = [
        'ownerName',
        'libelle',
        'type',
        'city',
        'phoneNumber',
        'email',
    ];

    public function TargetLocations()
    {
        return $this->hasMany(TargetLocation::class);
    }

    // Define relationships if needed (e.g., with other models)

    // Example: A phone may belong to a user if there is a user_id field in the phones table
    // public function user()
    // {
    //     return $this->belongsTo(User::class);
    // }
}
