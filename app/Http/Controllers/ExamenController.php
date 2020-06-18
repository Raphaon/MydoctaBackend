<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Examen;
class ExamenController extends Controller
{
    public function examen()
    {
        return Examen::get();
        return response()->json($examens, 200);
    }
}
