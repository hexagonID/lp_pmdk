<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Benefit extends Model
{
    protected $table = 'benefits';
    protected $fillable = [
        'name','slug','description','content','image'
    ];

    protected function image(): Benefit
    {
        return Benefit::make(
            get: fn ($value) => asset('/storage/benefits/' . $value),
        );
    }
}
