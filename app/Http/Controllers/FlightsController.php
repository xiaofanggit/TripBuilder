<?php

namespace App\Http\Controllers;

use App\Model\Flight;
use Illuminate\Http\Request;

/**
 * Trip Flights controller
 */

class FlightsController extends Controller
{
    /**
     * Construct to set API access passport 
     */
    public function __construct() 
    {
       $this->middleware('auth:api');
    }
    /**
     * Get flight list according to its trip id.
     * 
     * url: /api/v1/flights?id={trip_id}
     * Method: GET
     * @param int $id: the trip id
     * @return flights of a trip json data with status code(ok: 200 | bad: 400)
     */    
    public function index(Request $request)
    {  
        $status = config('constants.HTTP_OK');        
        try
        {            
            $flights = (new Flight)->findFlights($request->input('id'));
        }
        catch (Exception $e){
            $flights = [];        
            $status = config('constants.HTTP_BAD');
        }finally
        {
            return \Response::json(array('flights' => $flights, 'status' => $status));
        }
    }
    
    /**
     * Add s flight into a trip.
     * 
     * url: /api/v1/flights
     * Method: POST
     * 
     * @param int $trip_id: id of a trip
     * @param int $start_airport: id of a source airport
     * @param ing $end_airport: id of a destination airport
     * 
     * @return insert result(ture or false) with status code(ok: 200 | bad: 400)
     */
    public function store(Request $request)
    {   
        $result = [];    
        try
        {            
            $result = (new Flight)->addFlight($request->all());             
        }
        catch (Exception $e)
        {           
            $result = ['result' => false, 'msg' => $e->getMessage(), 'status' => config('constants.HTTP_BAD')];
        }
        finally
        {   
            return \Response::json($result);
        }
    }
    /**
     * Delete a flight from a trip
     * url: /api/v1/flights
     * method: DELETE
     * @param int $id: flight id
     */
    public function delete(Request $request)
    {   
        $result = false;
        $status = config('constants.HTTP_OK');
        $msg ="";
        try
        {            
            $result = \Response::json(Flight::findOrFail($request->input('id'))->delete());            
            $msg = "The flight deleted successfully";
        }
        catch (Exception $e)
        {
            $status = config('constants.HTTP_BAD');
            $msg = $e->getMessage();
        }
        finally
        {   
            return \Response::json(['result' => $result, 'status' => $status, 'msg' => $msg]);
        }
    }    
}
