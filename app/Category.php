<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //

    public function images()
    {
        return $this->morphMany('App\Image', 'relatedEntity');
    }
}
