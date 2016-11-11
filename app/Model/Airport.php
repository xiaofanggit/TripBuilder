<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

/**
 * Model Airport
 */
class Airport extends Model
{   
    /**
     * Get airports list according to their Initial letter
     * 
     * @param char $init: the initial letter
     * 
     * @return array data
     */
    public function findAirportsByInit($init = 'A') {
        return DB::table("Airports")->where('airport_name', 'LIKE', $init.'%')->get();
    }
}