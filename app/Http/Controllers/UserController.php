<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{


    public function create()
    {
        return view('User.signUp');
    }
    public function store()
    {
    }
    public function delete()
    {
    }
    public function edit()
    {
    }


    public function recoveryPassword()
    {
        return view('Auth.PasswordRecovery');
    }
}
