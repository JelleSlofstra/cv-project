<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Vrijwilligerswerk</h2>
    <hr>
    <ul>            
        <?php foreach($vars['volunteerjobs'] as $volunteerjob): ?>
            <li>
                <div class="row">
                    <div class="col-2">
                        <?= $volunteerjob->start_year ?> -
                        <?php if (!$volunteerjob->end_year): ?>
                            heden:
                        <?php else: ?>
                            <?= $volunteerjob->end_year ?>:
                        <?php endif; ?>
                    </div>
                    <div class="col-10">
                        <b> <?= $volunteerjob->function ?></b>
                        <?= $volunteerjob->info ?>
                    </div>
                </div>
            </li>            
        <?php endforeach; ?>
    </ul> 
</div>

<?php require 'views/partials/footer.view.php' ?>