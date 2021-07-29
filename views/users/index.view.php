<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <div>Werkervaring van <?= $vars['user']->first_name ?></div>
    <section>
        <?php foreach($vars['jobs'] as $job) : ?>
            <div><?= $job->function ?></div>
        <?php endforeach ?>
    </section>
</div>

<?php require 'views/partials/footer.view.php' ?>