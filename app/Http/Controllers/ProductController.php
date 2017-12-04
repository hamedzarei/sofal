<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        return view('auth.panel')->with([
            'title' => 'پنل مدیریت',
            'no_header_image' => true,
            'type' => 'add_product'
        ]);
    }
    public function getOne(Request $request, $index = -1)
    {
        if ($index == -1) {
            return redirect('/category');
        }

        $product = Product::with('images')->where('id', $index)->first()->toArray();

        return view('product')->with([
            'title' => $product['name'],
            'product' => $product,
            'nav' => [
                'categories' => Category::all(['id', 'name'])->toArray()
            ]
        ]);
    }
}
