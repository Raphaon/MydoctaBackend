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
        $password = sha1(md5(request('password')));
        
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


    public function signUp()
    {
        return view('./User/signUp');
        
    }

    public function addUser(Request $request)
    {

        $fullname = request('fullName');
        $email = request('userEmail');
        $phoneNumber = request('phoneNumber');
        $password = request('password');
        $cpassword =request("cpassword");
        $readTerm = request('readcontrat');
      

        $user = new User();
        $user->name = $fullname;
        $user->email = $email;
        $user->phoneNumber= $phoneNumber;
        $user->password =sha1(md5($password));
        if($password == $cpassword)
        {
            if(!empty($fullname) and !empty($email) and !empty($password) and !empty($readTerm))
            {
                if($user->save())
                {
                    return redirect('home');
                }
            }
        }
        return false;


    }
}
