<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Werkervaring</h2>
    <hr>
    <ul>            
        <?php foreach($vars['jobs'] as $job): ?>
            <li>
                <div class="row">
                    <div class="col-2">
                        <?= $job->start_year ?> -
                        <?php if (!$job->end_year): ?>
                            heden:
                        <?php else: ?>
                            <?= $job->end_year ?>:
                        <?php endif; ?>
                    </div>
                    <div class="col-10">
                        <b> <?= $job->function ?></b>
                        <?= $job->info ?>
                    </div>
                </div>
            </li>            
        <?php endforeach; ?>
    </ul>     
</div>

<?php require 'views/partials/footer.view.php' ?>