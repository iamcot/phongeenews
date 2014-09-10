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

Route::controller('facelogin','FacebookController');
Route::any('login',array('before'=>'guest','uses'=>'UserController@login'));
Route::any('logout','UserController@logout');
Route::controller('ajax','AjaxController');
Route::controller('admin','ShopAdminController');
Route::controller('upload','UploadController');
Route::controller('cart','OrdersController');

Route::any('/event/{url}','EventController@getIndex');
Route::controller('event','EventController');

Route::any('/hastag/{tag}','ListController@showtag');
Route::post('search','ListController@showsearch');
Route::get('/{cat}/{product}.html','DetailsController@showDetails');
Route::any('/fav/{type}','ListController@showfav');
Route::any('/{cat}','ListController@showList');
Route::any('/{cat}/{year}','ListController@showList');
Route::any('/{cat}/{year}/{month}','ListController@showList');

Route::get('/','ShopController@getIndex');






