<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('product');
//});
//
//Route::get('/register', function () {
//    return view('auth.register');
//})->name('register');
//
//Route::get('/login', function () {
//    return view('welcome');
//})->name('login');


Route::get('/', 'MainController@index');
Route::get('/home', 'MainController@index')->name('home'); // TODO user panel

Route::get('/category/{index?}', 'CategoryController@getOne');

Route::get('/product/{index?}', 'ProductController@getOne');

//Auth::routes();
Route::post('/login', 'AuthController@login');
Route::get('/login', function () {
    return view('auth.login');
})->name('login');

Route::post('/register', 'AuthController@register');
Route::get('/register', function () {
    return view('auth.register');
})->name('register');

Route::post('/logout', 'AuthController@logout')->name('logout');

Route::get('/password/reset', function () {
    return view('auth.passwords.reset');
})->name('password.request');

Route::get('/panel', function () {
    return view('auth.panel');
})->name('panel');

Route::get('/panel/product/add', 'ProductController@index')->name('panel.product.add');
//Route::get('/home', 'HomeController@index')->name('home');
