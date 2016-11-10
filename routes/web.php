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

Route::get('/', 'HomeController@index');
/*Route::get('about', function () {
    return view('pages.about');
});
Route::get('contact', function () {
    return view('pages.contact');
});*/
Auth::routes();

//Route::get('airportsList', 'AirportsController@airportsList');
//Route::get('flights', 'FlightsController@getFlights');
//Route::post('flights', 'FlightsController@addFlights');
//Route::delete('flights', 'FlightsController@removeFlights');
//Auth::routes();

Route::get('/home', 'HomeController@index');
