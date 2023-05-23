<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Headline extends Model
{
    use HasFactory;

    protected $fillable = [
        'heading','description', 'image','id_youtube','sec_color','order_no','position'
    ];

    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => asset('/storage/identities/' . $value),
        );
    }
}
