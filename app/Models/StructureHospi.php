<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StructureHospi extends Model
{
    public function getService()
    {
        return Service::where('matriStru', $this)->get();
    }
}
