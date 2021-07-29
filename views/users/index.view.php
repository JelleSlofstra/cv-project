<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <div>Gebruikers</div>
        <?php foreach($vars as $user) : ?>
            <?= $user->first_name ?>
        <?php endforeach; ?>
</div>

<?php require 'views/partials/footer.view.php' ?>