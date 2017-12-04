<?php

namespace App\Http\Controllers;

use App\Category;
use App\Image;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

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

    public function create(Request $request)
    {
//        Storage::disk('public')->put($request->file('image')->getClientOriginalName(), $request->file('image'));
        $product = Product::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'code' => $request->input('code'),
            'size' => $request->input('size'),
            'kind' => $request->input('kind'),
            'washable' => $request->input('washable'),
            'material' => $request->input('material'),
            'cost' => $request->input('cost'),
            'colors' => $request->input('colors'),
            'category_id' => $request->input('category_id')
        ]);

        $img_name = Storage::disk('public')->put('', $request->file('image'));
        Image::create([
            'path' => "img/product/$img_name",
            'relatedEntity_id' => $product->id,
            'relatedEntity_type' => 'App\Product'
        ]);

        return redirect()->route('panel');
//        Storage::disk('public')->put('product/', $request->file('file'));


    }
}
