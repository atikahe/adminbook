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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/book', 'BookController@index');
Route::get('/book/requestRent/{id}', 'BookController@requestRent');
Route::post('/book/sendRequest', 'BookController@sendRequest');

Route::get('/admin', 'AdminController@dashboard');
Route::get('/admin/login', 'AdminController@login');
Route::post('/admin/prosesLogin', 'AdminController@prosesLogin');
Route::get('/admin/sendEmail/{email}','AdminController@sendEmail');