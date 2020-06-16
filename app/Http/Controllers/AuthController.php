<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class AuthController extends Controller
{
    public function Login(Request $request)
    {
        return view('User/login');
    }

    public function checkLog()
    {
        $user_name = request("username");
        $password = request('password');
        $checkLog = false;
        if(!empty($user_name) and !empty($password))
        {
            $checkLog = User::where('email', '=', $user_name)
                        ->where('password', '=', $password)
                        ->first();         
        }
        return  response()->json([
            'UserInfo' => $checkLog
        ], 200);
        return false;
    }
}
