<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{

    protected $fillable = [
        'path',
        'relatedEntity_id',
        'relatedEntity_type'
    ];

    public function relatedEntity()
    {
        return $this->morphTo();
    }
}
