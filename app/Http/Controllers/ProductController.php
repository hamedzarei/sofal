<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getOne(Request $request, $index = -1)
    {
        if ($index == -1) {
            return redirect('/category');
        }
    }
}
