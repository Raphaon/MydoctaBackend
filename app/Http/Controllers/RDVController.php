<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RDV;

class RDVController extends Controller
{
    public function getRDV()
    {
        return RDV::get();
    }

    public function getServices(){
        
    }


    public function create()
    {
    }
    public function store()
    {
    }
}
