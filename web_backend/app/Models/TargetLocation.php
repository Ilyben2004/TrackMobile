<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TargetLocation extends Model
{
    use HasFactory;

    protected $fillable = ['phone_id', 'longitude', 'latitude','visited'];

    public function phone()
    {
        return $this->belongsTo(Phone::class);
    }
}
