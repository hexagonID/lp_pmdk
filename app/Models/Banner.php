<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;

    protected $fillable = [
        'image','show_id'
    ];

    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => asset('/storage/identities/' . $value),
        );
    }
}
