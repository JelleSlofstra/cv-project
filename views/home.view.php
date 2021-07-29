<?php require 'views/partials/header.view.php' ?>

<div class="main">
   <h2> This is the CV-site of <?= $vars['user']->first_name ?> <?= $vars['user']->last_name ?></h1>
   <hr>
   <img class="mx-auto d-block" src="https://picsum.photos/600/400" alt="">
</div>

<?php require 'views/partials/footer.view.php' ?>