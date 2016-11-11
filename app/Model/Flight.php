<?php

namespace App\Model;
use DB;
use Illuminate\Database\Eloquent\Model;

/**
 * Model Flight
 */
class Flight extends Model
{
    //Fillable fields
    public $fillable = ['trip_id','start_airport','end_airport'];
    
    /**
     * Many to one relation
     * @return type
     */
    public function trips()
    {
        return $this->belongTo('App\Model\Trip');
    }
    
    /**
     * 
     * @param int $id: flight id
     * @return boolean
     */
    public function removeFlightsFromTrip($id)
    {
        return DB::table('flights')->find($id)->delete();
    }
    /**
     * Add a flight into a trip
     * Will not insert if a trip flight exist, or start and end airport is he same
     * @param int $trip_id: trip id
     * @param int $start_airport: source airport
     * @param int $end_airport: destination airport 
     * @return boolean
     */
    public function addFlight($data)
    {   //Not allow start and the end are the same airport  
        if ($data['start_airport'] == $data['end_airport'])
        {           
            return ['result' => false, 'msg' => 'Failed! The start airport and end airport is the same', 'status' => 400];
        }
        $flight = DB::table('flights')->where([['trip_id',  $data['trip_id']], ['start_airport', $data['start_airport'], ['end_airport', $data['end_airport']]]])->first();
        if ($flight === null)
        {
           $result= DB::table('flights')->insert([
                ['trip_id' => $data['trip_id'], 'start_airport' => $data['start_airport'], 'end_airport' => $data['end_airport'], 'created_at' => date('Y-m-d h:m:s'), 'updated_at' => date('Y-m-d h:m:s')]
            ]);
           
           return ['result' => $result, 'msg' => 'The flight inserted successfully.', 'status' => 200];
        }
        return ['result' => false, 'msg' => 'Failed! The flight already exsit.', 'status' => 400];
    }
    /**
     * 
     * Find all flights of a trip
     * 
     * @param int $id: trip id
     * 
     * @return array data
     */
    public function findFlights($id)
    {
        $condi = empty($id) ? '' : "f.trip_id = $id and";
        return $results = DB::select( 
                 DB::raw("
                    SELECT f.id, f.trip_id, a1.airport_name as start_name, a2.airport_name as end_name 
                    FROM flights f, airports a1, airports a2
                    where $condi f.start_airport = a1.id 
                    and f.end_airport = a2.id order by f.trip_id, f.id") );
         
    }
}
