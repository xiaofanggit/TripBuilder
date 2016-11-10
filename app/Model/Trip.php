<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    public $fillable = ['trip_id','source_city','destination_city'];
    
    /**
     * One to many relation
     * @return type
     */
    public function flights()
    {
        return $this->hasMany('App\Model\Flight');
    }
}
