<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;

/**
 * Trips controller
 */
class TripsController extends Controller
{
   /**
    * Trips construct to set passport
    */
    public function __construct() {
        $this->middleware('auth:api');
    }
}
