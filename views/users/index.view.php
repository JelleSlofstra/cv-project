<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Persoonlijke informatie</h2>
    <hr>           
    <div class="row"> 
        <div class="col-2">Naam: </div>
        <div class="col-10"><?= $vars['user']->first_name . ' ' . $vars['user']->last_name ?></div>         
    </div>
    <div class="row"> 
        <div class="col-2">E-mail: </div>
        <div class="col-10"><?= $vars['user']->email ?></div> 
    </div>
    <div class="row"> 
        <div class="col-2">Telefoonnummer: </div>
        <div class="col-10"><?= $vars['user']->phone ?></div>  
    </div>
    <div class="row"> 
        <div class="col-2">Geboortedatum: </div>
        <div class="col-10"><?= $vars['user']->date_birth ?></div>
    </div>    
</div>

<?php require 'views/partials/footer.view.php' ?>