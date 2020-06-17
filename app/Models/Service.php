<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Programme;
class Service extends Model
{
    public function getProgramme()
    {
        return Programme::where("serviceReff", $this->code_service)
                        ->get();
    }
}
