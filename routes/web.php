<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/**
 * Gestion des routes pour l'authetification
 */

Route::get('/login', [
    'as'   => 'login',
    'uses' => 'AuthController@login'
]);





Route::get('/', [
    'as'   => 'Home',
    'uses' => 'HomeController@index'
]);


Route::get('/appointmentMenu', [
    'as'   => 'Home',
    'uses' => 'HomeController@index'
]);


Route::get('/appointmentTracking', [
    'as'   => 'Home',
    'uses' => 'HomeController@index'
]);

Route::get('/newAppointment', [
    'as'   => 'Home',
    'uses' => 'HomeController@index'
]);

Route::get('/services', [
    'as'   => 'Home',
    'uses' => 'RDVController@getServices'
]);


Route::get('appointmentProgramme', [
    'as'   => 'Home',
    'uses' => 'HomeController@index'
]);




Route::get('/AppList', [
    'as'   => 'ListApi',
    'uses' => 'HomeController@getAppList'
]);


Route::get('users', [
    'as'   => 'Users',
    'uses' => 'AuthController@getUser'
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





Route::post('/authCheck', [
    'as'   => 'checkLog',
    'uses' => 'AuthController@checkLog'
]);


Route::get('/forgoten', [
    'as'   => 'passwordForgot',
    'uses' => 'AuthController@forgotPassword'
]);


Route::get('/passwordRecovery/{token}', [
    'as'   => 'passwordRecovery',
    'uses' => 'UserController@recoveryPassword'
]);




Route::get('/auth', [
    'as'   => 'login',
    'uses' => 'AuthController@login'
]);


Route::get('/activation/{id}', [
    'as'   => 'activationMail',
    'uses' => 'AuthController@activationMail'
]);
