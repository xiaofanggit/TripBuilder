<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Http\Request;

class TripsController extends Controller
{
   
    public function __construct() {
        $this->middleware('auth');
    }
}
