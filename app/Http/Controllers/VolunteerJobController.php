<?php

namespace App\Http\Controllers;

use App\Libraries\View;
use App\Models\VolunteerJobModel;
use App\Models\UserModel;

class VolunteerJobController extends Controller
{

    public function index()
    {   
        View::render('volunteerjobs/index.view',[
            'user'              => UserModel::get(1),
            'volunteerjobs'     => VolunteerJobModel::userVolunteerJobs(1)
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
        
    }

    public function show()
    {

    }

    /**
     * Updates a user record into the database
     */
    public function update()
    {
       
    }

    /**
     * Archive a user record into the database
     */
    public function destroy(int $id)
    {

    }

}
