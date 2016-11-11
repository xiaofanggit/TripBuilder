<?php

use Illuminate\Http\Request;

/*
  |--------------------------------------------------------------------------
  | API Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register API routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | is assigned the "api" middleware group. Enjoy building your API!
  |
 */

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api');

/**
 * API call route related with airports and flights.
 * Since this is version1, add v1 as the prefix.
 */
Route::group(['prefix' => 'v1'], function () {
    Route::get('airports', 'AirportsController@index');
    Route::resource('flights', 'flightsController', ['except' => ['destroy']]);
    Route::delete('flights', 'FlightsController@delete');
});
