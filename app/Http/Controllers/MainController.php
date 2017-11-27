<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class MainController extends Controller
{

    public function index()
    {

        return view('main')->with([
            'title' => 'صفحه اصلی',
            'cats' => Category::with('images')->get()->toArray(),
            'nav' => [
                'categories' => Category::all(['id', 'name'])->toArray()
            ]
        ]);
    }
}
