<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{


    public function relatedEntity()
    {
        return $this->morphTo();
    }
}
