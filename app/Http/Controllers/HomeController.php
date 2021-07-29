<?php

namespace App\Http\Controllers;

use App\Libraries\View;

use App\Models\UserModel;

class HomeController {

    public function index()
    {
        $userinfo = UserModel::get(1);
        return View::render('home.view', ['user' => $userinfo]        
        );
    }
}