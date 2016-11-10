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
        $statusCode = config('constants.HTTP_OK');        
        try
        {            
            $flights = (new Flight)->findFlights($request->input('id'));
        }
        catch (Exception $e){
            $flights = [];        
            $statusCode = config('constants.HTTP_BAD');
        }finally
        {
            return \Response::json(array('flights' => $flights, 'status' => $statusCode));
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
        $statusCode = config('constants.HTTP_OK');
        try
        {            
            $result = (new Flight)->addFlight($request->all()); 
        }
        catch (Exception $e)
        {
            $statusCode = config('constants.HTTP_BAD');
            $result = false;
        }
        finally
        {
            return \Response::json(array('result' => $result, 'status' => $statusCode));
        }
    }
    /**
     * Remove a flight from a trip
     * url: /api/v1/flights
     * method: DELETE
     * @param int $id: flight id
     */
    public function destroy($id)
    {   
        $statusCode = config('constants.HTTP_OK');
        try
        {            
            $result = \Response::json(Flight::findOrFail($id)->delete());
        }
        catch (Exception $e)
        {
            $statusCode = config('constants.HTTP_BAD');
            $result = false;
        }
        finally
        {
            return \Response::json($result, $statusCode);
        }
    }
}
