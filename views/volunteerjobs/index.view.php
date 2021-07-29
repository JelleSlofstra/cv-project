<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Vrijwilligerswerk</h2>
    <hr>
    <ul>            
        <?php foreach($vars['volunteerjobs'] as $volunteerjob): ?>
            <li>
                <?= $volunteerjob->start_year ?> -
                <?php if (!$volunteerjob->end_year): ?>
                    heden:
                <?php else: ?>
                    <?= $volunteerjob->end_year ?>:
                <?php endif; ?>
                <b> <?= $volunteerjob->function ?></b>
                <?= $volunteerjob->info ?>
            </li>            
        <?php endforeach; ?>
    </ul> 
</div>

<?php require 'views/partials/footer.view.php' ?>