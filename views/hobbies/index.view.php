<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Hobby's</h2>
    <ul>            
        <?php foreach($vars['hobbies'] as $hobby): ?>
            <li>
                <?= $hobby->name ?>
            </li>            
        <?php endforeach; ?>
    </ul>    
</div>

<?php require 'views/partials/footer.view.php' ?>