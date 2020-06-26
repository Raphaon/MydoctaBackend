<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method, Authorization");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");



use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// private policy of confidentialiti
Route::get('{apiKey}/policy', [
    'as'   => 'policy',
    'uses' => 'ApiAuthController@policy'
]);
//requete des informations concernant le patient
Route::get('/{apiKey}/patients', [
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


Route::get('{apiKey}/apiAuth', [
    'as'   => 'apiAuth',
    'uses' => 'ApiAuthController@apiAuth'
]);




Route::get('{apiKey}/examens', [
    'as'   => 'examenListAPI',
    'uses' => 'ExamenController@examen'
]);

// fonction d'enregistrement des patients

Route::post('{apiKey}/signUpSave', [
    'as'   => 'newUser',
    'uses' => 'AuthController@addUser'
]);


Route::post('{apiKey}/authCheck', [
    'as'   => 'checkLog',
    'uses' => 'AuthController@checkLog'
]);
