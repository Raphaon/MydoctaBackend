<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


<<<<<<< HEAD
Route::get('/', [
    'as'   => 'home',
    'uses' => 'HomeController@index'
]);
=======
Route::get('/newApiUser', [
    'as'   => 'newApiApp',
    'uses' => 'ApiAuthController@new'
]);

Route::get('/policy', [
    'as'   => 'policy',
    'uses' => 'ApiAuthController@policy'
]);

Route::post('/addUserApp', [
    'as'   => 'addUserApi',
    'uses' => 'ApiAuthController@saveUser'
]);

Route::get('/auth', [
    'as'   => 'authentification',
    'uses' => 'AuthController@Login'
]);


Route::post('/authCheck', [
    'as'   => 'checkLog',
    'uses' => 'AuthController@checkLog'
]);


>>>>>>> 18a67dc151347756c46741151b56ac71da9237a9
