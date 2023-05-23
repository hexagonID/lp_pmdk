<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Identity extends Model
{
    use HasFactory;

     /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'image','name', 'description','address','gmap','phone','email','fb','ig','tt','yt'
    ];

    /**
     * image
     *
     * @return Attribute
     */
    protected function image(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => asset('/storage/identities/' . $value),
        );
    }


} 
