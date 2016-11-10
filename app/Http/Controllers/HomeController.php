<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
    }

    /**
     * A page to Generate api token 
     * @return type
     */
    public function index()
    {
        return view('pages.token');
    }
}
