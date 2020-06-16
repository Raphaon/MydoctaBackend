<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::get('/', [
    'as'   => 'home',
    'uses' => 'HomeController@index'
]);
