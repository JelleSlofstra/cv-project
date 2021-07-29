<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Werkervaring</h2>
    <hr>
    <ul>            
        <?php foreach($vars['jobs'] as $job): ?>
            <li>
                <?= $job->start_year ?> -
                <?php if (!$job->end_year): ?>
                    heden:
                <?php else: ?>
                    <?= $job->end_year ?>:
                <?php endif; ?>
                <b> <?= $job->function ?></b>
                <?= $job->info ?>
            </li>            
        <?php endforeach; ?>
    </ul>     
</div>

<?php require 'views/partials/footer.view.php' ?>