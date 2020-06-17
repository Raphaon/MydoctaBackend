<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Produits;
class Pharmacie extends Model
{
    public function getDrugs()
    {
        return Produits::get();
    }
    
}
