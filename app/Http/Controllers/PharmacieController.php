<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pharmacie;
class PharmacieController extends Controller
{
    public function getPharmacie()
    {
        return Pharmacie::get();
    }
}
