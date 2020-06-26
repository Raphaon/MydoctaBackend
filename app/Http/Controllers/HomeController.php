<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\api_user;
class HomeController extends Controller
{
    public function index()
    {
        return view("Home/Index");
    }

    public function getAppList()
    {
        return api_user::get();
    }
}
