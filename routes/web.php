<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::get('/', [
    'as'   => 'Home',
    'uses' => 'HomeController@index'
]);

Route::get('/AppList', [
    'as'   => 'ListApi',
    'uses' => 'HomeController@getAppList'
]);


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


Route::get('/signUp', [
    'as'   => 'signUp',
    'uses' => 'AuthController@signUp'
]);

Route::post('/signUpSave', [
    'as'   => 'newUser',
    'uses' => 'AuthController@addUser'
]);



Route::get('/Examen', [
    'as'   => 'ExamenList',
    'uses' => 'ExamenController@examen'
]);

Route::get('/{apiKey}', [
    'as'   => 'apiKey',
    'uses' => 'ApiAuthController@checkKey'
]);



Route::post('/authCheck', [
    'as'   => 'checkLog',
    'uses' => 'AuthController@checkLog'
]);




