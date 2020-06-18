<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// private policy of confidentialiti
Route::get('/policy', [
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


Route::get('{apiKey}/newApiUser', [
    'as'   => 'newApiApp',
    'uses' => 'ApiAuthController@new'
]);



Route::post('{apiKey}/addUserApp', [
    'as'   => 'addUserApi',
    'uses' => 'ApiAuthController@saveUser'
]);

Route::get('{apiKey}/auth', [
    'as'   => 'authentification',
    'uses' => 'AuthController@Login'
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
