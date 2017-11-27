<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function getOne(Request $request, $index = 1)
    {
        $cat = Category::with('products')->with('products.images')->where('id', $index)->first()->toArray();
        return view('category')->with([
            'title' => $cat['name'],
            'products' => $cat['products'],
            'nav' => [
                'categories' => Category::all(['id', 'name'])->toArray()
            ]
        ]);
    }
}
