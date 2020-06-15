<?php

namespace App\Http\Controllers;

use App\Models\Laboratoire;
use Illuminate\Http\Request;

class LaboratoireController extends Controller
{
    public function getAllLaboratoire()
    {
        return Laboratoire::get();
    }

    public function getLabo($codeLabo)
    {
        return Laboratoire::where('codeLab', $codeLabo)->get() ;
    }
}
