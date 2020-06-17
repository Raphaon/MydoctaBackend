<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Examen;
class ExamenController extends Controller
{
    public function index(Request  $request)
    {
        return $examens = Examen::get();
        return response()->json($examens, 200);
    }
}
