<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// private policy of confidentialiti
Route::get('/policy', [
    'as'   => 'policy',
    'uses' => 'ApiAuthController@policy'
]);




















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


Route::get('/newApiUser', [
    'as'   => 'newApiApp',
    'uses' => 'ApiAuthController@new'
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
