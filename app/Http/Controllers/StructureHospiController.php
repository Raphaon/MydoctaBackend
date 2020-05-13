<?php

namespace App\Http\Controllers;

use App\Models\StructureHospi;
use Illuminate\Http\Request;

class StructureHospiController extends Controller
{
    public function getstructureHospi()
    {
        return StructureHospi::get();
    }
}
