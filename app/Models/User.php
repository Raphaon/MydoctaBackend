<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $isAuth;
    protected $email;
    protected $surname;
    protected $name;
    protected $phoneNumber;
    protected $isActivate;
    protected $picture;


    public function isAuth()
    {
        return false;
    }
}
