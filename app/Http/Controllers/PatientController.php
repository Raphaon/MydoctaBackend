<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Patient;
use App\Models\FicheMedicale;
class PatientController extends Controller
{
    public function index(Request $request)
    {
        $email = request('email');
        return response()->json([
            'message' => 'Message bien reçu'.$email
        ], 200);


        return view('Patient/index');
        $patients = Patient::get();
        return request();
    //	dd($patients);

    }


    public function searchPatient()
    {
        return 0;
    }

    public function PatientTest(Request $request){
        $email = request('email');
        return  response()->json([
            'message' => 'Bien reçu voici le mail envoyé : '.$email
        ], 200);


    }

    public function addPatien(Request $request)
    {
        $patient = new Patient();
        $patient->save();
    }

    public function update()
    {
        return true;
    }


}



