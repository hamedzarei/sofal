<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class MainController extends Controller
{

    public function index()
    {

//        dd();
        return view('main')->with([
            'cats' => Category::with('images')->get()->toArray()
        ]);
    }
}
