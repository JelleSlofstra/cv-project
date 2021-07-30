<?php require 'views/partials/header.view.php' ?>

<div class="main">
    <h2>Hobby's</h2>
    <hr>
    <ul>            
        <?php foreach($vars['hobbies'] as $hobby): ?>
            <li>
                <?= $hobby->name ?>
            </li>            
        <?php endforeach; ?>
    </ul>    

    <h3>Voeg een hobby toe</h3>
    <hr>
    <form method="POST" action="hobbies/add">
        <input name="hobby"></input>
        <button type="submit">Voeg toe</button>
    </form>

</div>

<?php require 'views/partials/footer.view.php' ?>