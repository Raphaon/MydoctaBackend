<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class AuthController extends Controller
{
    public function Login(Request $request)
    {
        $user_name = request("user_name");
        $password = request('password');
        $checkLog = false;
        if(!empty($user_name) and !empty($password))
        {
            $checkLog = User::where('username', '=', $user_name)
                        ->where('password', '=', $password)
                        ->get();
            if($checkLog != null)
                $checkLog =true;
        }

        return $checkLog;
    }
}
