<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//requete des informations concernant le patient
Route::get('/patients', [
    'as'   => 'patientList',
    'uses' => 'PatientController@index'
]);

Route::post('/patientTest', [
    'as'   => 'patientLog',
    'uses' => 'PatientController@PatientTest'
]);

Route::get('/patient/{matricule}', [
    'as'   => 'patientInfo',
    'uses' => 'PatientController@index'
]);

Route::get('/patient/{matricule}/DossierMedicale', [
    'as'   => 'patientList',
    'uses' => 'PatientController@index'
]);


Route::get('/apiAuth', [
    'as'   => 'apiAuth',
    'uses' => 'ApiAuthController@apiAuth'
]);

Route::get('/{apiKey}', [
    'as'   => 'apiKey',
    'uses' => 'ApiAuthController@checkKey'
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


Route::get('/examens', [
    'as'   => 'examenListAPI',
    'uses' => 'ExamenController@examen'
]);

// fonction d'enregistrement des patients 

Route::post('/signUpSave', [
    'as'   => 'newUser',
    'uses' => 'AuthController@addUser'
]);
