<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Skills</h2>
    <ul>            
        <?php foreach($vars['skills'] as $skill): ?>
            <li>
                <?= $skill->name ?>
            </li>            
        <?php endforeach; ?>
    </ul>    
</div>

<?php require 'views/partials/footer.view.php' ?>