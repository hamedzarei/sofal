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

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
