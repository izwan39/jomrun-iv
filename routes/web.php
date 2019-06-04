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

Auth::routes();

Route::get('/movies', 'MoviesController@index')->name('movies');

Route::get('/favorites', 'FavoritesController@index')->name('favorites');

Route::get('/addToFav/{movie_id}', 'FavoritesController@store');
Route::get('/remFrFav/{movie_id}', 'FavoritesController@delete');

Route::get('/home', 'HomeController@index')->name('home');
