<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::any('login',array('before'=>'guest','uses'=>'UserController@login'));
Route::any('login/reg',array('before'=>'guest','uses'=>'UserController@reg'));
Route::any('logout','UserController@logout');
Route::controller('admin','ShopAdminController');
Route::controller('upload','UploadController');

Route::get('/','HomeController@getIndex');
Route::get('/gioi-thieu.html','HomeController@getAbout');
Route::get('/lien-he.html','HomeController@getContact');
Route::get('/dich-vu.html','ServiceController@getIndex');
Route::get('/dich-vu/{url}.{id}.html','ServiceController@getList');






