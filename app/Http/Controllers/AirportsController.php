<?php

namespace App\Http\Controllers;

use App\Model\Airport;
use Illuminate\Http\Request;

class AirportsController extends Controller 
{
    /**
     * Construct to set API access passport 
     */
    public function __construct() {
        $this->middleware('auth:api');
    }
    
    /**
     * Get airports list according to their Initial letter.
     * The default Initial letter is 'A'
     * 
     * url: /api/v1/airports?init=A
     * 
     * Method: GET
     * @param char $init: the initial letter
     * @return airport list json data with status number(ok: 200 or bad: 400)
     */    
    public function index(Request $request)
    {  
        $statusCode = config('constants.HTTP_OK');
        try
        {            
            $airports = (new Airport())->findAirportsByInit($request->input('init'));
        }
        catch (Exception $e){
            $airports = [];
            $statusCode = config('constants.HTTP_BAD');
        }finally{
            return \Response::json($airports, $statusCode);
        }
    }    
}
