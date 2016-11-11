<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('trips')->insert([
            'source_city' => 'Monteal',
            'destination_city' => 'Bejing',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'Monteal',
            'destination_city' => 'Calgory',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);       
        DB::table('trips')->insert([
            'source_city' => 'Monteal',
            'destination_city' => 'Shanghai',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'Monteal',
            'destination_city' => 'Toronto',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'Monteal',
            'destination_city' => 'vancouver',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'Bejing',
            'destination_city' => 'Montreal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'Calgory',
            'destination_city' => 'Montreal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);       
        DB::table('trips')->insert([
            'source_city' => 'Shanghai',
            'destination_city' => 'Montreal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'Toronto',
            'destination_city' => 'Montreal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
        DB::table('trips')->insert([
            'source_city' => 'vancouver',
            'destination_city' => 'Montreal',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);
    }
    }
