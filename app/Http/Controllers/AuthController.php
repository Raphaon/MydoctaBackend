<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use DB;
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
                        ->where('isActivate',"true")
                        ->first();
        }
        return  response()->json([
            'UserInfo' => $checkLog
        ], 200);
    }


    public function signUp()
    {
        return view('./User/SignUp');

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

                    $subject = "Activation account";
                    $url = route('activationMail', ['id' => $user->id]);
                    $message = "Hello thank you for your confidence. \n
                     here is the link to activate you account \n".$url." Just click on the link to activate your account.";
                    $headers = "From: confirmationmailmydocta@gmail.com\r\n";
                    $headers .= "Disposition-Notification-To:confirmationmailmydocta@gmail.com"; // c'est ici que l'on ajoute la directive
                     mail($user->email, $subject, $message, $headers);
                    return  response()->json([
                        'message' => "Un mail d'activation à été envoyé dans votre compte  ".$user->email ."Si vous ne voyez pas svp verifier aussi vos spams"
                    ], 200);
                }
            }
        }
        return  response()->json([
            'message' => 'Echec !'
        ], 200);;


    }


    public function sendMail()
    {
        return "Je suis la !";
    }


    public function passwordRecovery()
    {
        $destinataire = "raphaondobo@gmail.com"; // adresse mail du destinataire
        $sujet = "Confirmation de votre Mail"; // sujet du mail
        $message = "Activation de votre compte cliquez sur le lien suivant mydocta.cm/url/fsdfsdfsd/, svp si le lien ne s'active pas veuillez le copier et coller dans la barre d'adresse d'un navigateur "; // message qui dira que le destinataire a bien lu votre mail
        // maintenant, on crée l'en-tête du mail
        $header = "From: confirmationmailmydocta@gmail.com\r\n";
        $header .= "Disposition-Notification-To:confirmationmailmydocta@gmail.com"; // c'est ici que l'on ajoute la directive
        dd(mail ($destinataire, $sujet, $message, $header)); // on envois le mail
        //return view('User/passwordRecovery');
    }

    public function activationMail(Request $request)
    {
        $id = request('id');
        $user = User::where('isActivate',"false")
                    ->where("id", $id)
                    ->first();
        if($user != null)
        {

                    $subject = "Confirmation Activation";
                    $message = "Congratulation your Mail have been activate ";
                    $headers = "From: confirmationmailmydocta@gmail.com\r\n";
                    $headers .= "Disposition-Notification-To:confirmationmailmydocta@gmail.com"; // c'est ici que l'on ajoute la directive
                    mail($user->email, $subject, $message, $headers);
        }else
        {
            return 'Empty';
        }

                    return redirect()->to(route('authentification'));
    }

}



