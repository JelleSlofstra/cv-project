<?php

namespace App\Http\Controllers;

use App\Libraries\View;
use App\Models\HobbyModel;
use App\Models\UserModel;

class HobbyController extends Controller
{

    public function index()
    {   
        View::render('hobbies/index.view',[
            'user'      => UserModel::get(1),
            'hobbies'      => HobbyModel::userHobbies(1)
        ]);
    }

    /**
     * Store a user record into the database
     */
    public function store()
    {
        
    }

    public function create()
    {        
        //call the store method with the entered values as parameters
        HobbyModel::store([
            'id' => NULL,
            'user_id' => '1',
            'name' => $_POST['hobby'],
            'deleted' => NULL
        ]);

        //redirect to educations with the new entry being added
        header('Location: /hobbies');
    }
}
