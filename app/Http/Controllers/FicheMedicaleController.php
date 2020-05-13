<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\FicheMedicale;

class FicheMedicaleController extends Controller
{
    public function getAllMedicalFile()
    {
        return FicheMedicale::get();
    }

}
