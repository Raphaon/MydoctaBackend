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


<<<<<<< HEAD




=======
Route::get('/apiAuth', [
    'as'   => 'apiAuth',
    'uses' => 'ApiAuthController@apiAuth'
]);

Route::get('/{apiKey}', [
    'as'   => 'apiKey',
    'uses' => 'ApiAuthController@checkKey'
]);
<<<<<<< HEAD
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
    'as'   => 'ExamenListAPI',
    'uses' => 'ExamenController@index'
]);

Route::post('/signUpSave', [
    'as'   => 'newUser',
    'uses' => 'AuthController@addUser'
]);
=======
>>>>>>> 18a67dc151347756c46741151b56ac71da9237a9
>>>>>>> e1b42951a025f497224ccab991554cc950a3d109
