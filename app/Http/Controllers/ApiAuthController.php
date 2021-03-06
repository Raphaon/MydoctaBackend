<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ApiUser;
class ApiAuthController extends Controller
{

    public function checkLog()
    {}

    public function apiAuth()
    {
        $valeur_cle = "raphaTestkey";
        return "CLe :".sha1(md5($valeur_cle));
    }


    public function new()
    {
        return view('API/new');
    }

    public function saveUser(Request $request)
    {
        $username = request('apiUsername');
        $email = request('apiUserEmail');
        $appName = request('apiAppName');
        $readTerm = request('readcontrat');
        $apikey = sha1(md5($username.$appName.$email));

        $user_api = new ApiUser();
        $user_api->apiUsername = $username;
        $user_api->email_adress = $email;
        $user_api->appName = $appName;
        $user_api->apiKey = $apikey;
        if(!empty($username) and !empty($email) and !empty($appName) and !empty($readTerm))
        {
            if($user_api->save())
            {
                return "Voici la clé qui à été généré pour votre Api : ". $apikey;
            }
        }
        return "Une erreur c'est produit lors de votre enregistrement Veuillez reesayer";


    }
    public function checkKey(Request $request)
    {
        $apikey = request('apiKey');
        $user_api = ApiUser::where('apiKey', $apikey)->first();
        $keyApp =sha1(md5('MyDoctaFrondEnd'));
        if($user_api != null)
            return true;
        return false;
    }





    public function policy()
    {

        $policy ="";
        $monfichier = fopen('Docs/Policy.txt', 'r');
        while($ligne = fgets($monfichier))
            $policy = $policy.' '.$ligne;
        fclose($monfichier);
        return view('Docs/policy', compact('policy'));
    }

}
