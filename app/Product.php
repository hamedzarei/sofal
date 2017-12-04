<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name',
        'description',
        'code',
        'size',
        'kind',
        'washable',
        'material',
        'cost',
        'colors',
        'category_id'
    ];
    public function images()
    {
        return $this->morphMany('App\Image', 'relatedEntity');
    }

    public function comments()
    {
        return $this->morphMany('App\Comment', 'relatedEntity');
    }

    public function category()
    {
        return $this->belongsTo('App\Category');
    }
}
