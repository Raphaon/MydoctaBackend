<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\FicheMedicale;

class Patient extends Model
{
    protected $table  = 'Patient';

    public function getMedicalFolder()
    {
        return FicheMedicale::where('ReffPersonne',$this->reffPersonne)->get();
    }
    public function getInfo()
    {
        return Patient::join('Personne', 'Personne.matric', '=', 'patient.code')->get();
    }
    public function getNotification()
    {
        return 0;
    }
}
