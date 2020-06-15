<?php

namespace App\Http\Controllers;

use App\Models\Consultation;
use Illuminate\Http\Request;

class ConsultationController extends Controller
{
    public function getConsultationList()
    {
        return Consultation::get();
    }
}
