<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Opleidingen</h2>
    <ul>            
        <?php foreach($vars['educations'] as $education): ?>
            <li>
                <?= $education->start_year ?> -
                <?php if (!$education->end_year): ?>
                    heden:
                <?php else: ?>
                    <?= $education->end_year ?>:
                <?php endif; ?>
                <b> <?= $education->name ?></b>
                <?= $education->info ?>
            </li>            
        <?php endforeach; ?>
    </ul>    
</div>

<?php require 'views/partials/footer.view.php' ?>