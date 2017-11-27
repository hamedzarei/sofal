<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function images()
    {
        return $this->morphMany('App\Image', 'relatedEntity');
    }

    public function category()
    {
        return $this->belongsTo('App\Category');
    }
}
