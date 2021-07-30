<?php

namespace App\Http\Controllers;

use App\Libraries\View;
use App\Models\EducationModel;
use App\Models\UserModel;

class EducationController extends Controller
{

    public function index()
    {   
        View::render('educations/index.view',[
            'user'          => UserModel::get(1),
            'educations'    => EducationModel::userEducations(1)
        ]);
    }

    public function create()
    {
        //end year can be empty
        if(!$_POST['end_year']){
            $_POST['end_year'] = NULL;
        }

        //call the store method with the entered values as parameters
        EducationModel::store([
            'id' => NULL,
            'user_id' => '1',
            'start_year' => $_POST['start_year'],
            'end_year' => $_POST['end_year'],
            'name' => $_POST['name'],
            'info' => $_POST['info'],
            'deleted' => NULL
        ]);

        //redirect to educations with the new entry being added
        header('Location: /educations');
    }
}