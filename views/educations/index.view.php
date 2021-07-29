<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Opleidingen</h2>
    <hr>
    <ul>            
        <?php foreach($vars['educations'] as $education): ?>
            <li>
                <div class="row">
                    <div class="col-2">
                        <?= $education->start_year ?> -
                        <?php if (!$education->end_year): ?>
                            heden:
                        <?php else: ?>
                            <?= $education->end_year ?>:
                        <?php endif; ?>
                    </div>
                    <div class="col-10">
                        <b> <?= $education->name ?></b>
                        <?= $education->info ?>
                    </div>
                </div>
            </li>            
        <?php endforeach; ?>
    </ul>    
</div>

<?php require 'views/partials/footer.view.php' ?>