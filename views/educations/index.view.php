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
    
    <h3>Voeg een opleiding toe</h3>
    <hr>
    <form method="POST" action="educations/add">
        <div>
            <label for="name">Naam</label>
        </div>
        <div>                 
            <input name="name" id="name" placeholder="Naam van de opleiding"></input>
        </div>
        <div>
            <label for="info">Opleidingsinfo</label> 
        </div>
        <div>
            <input name="info" placeholder="Opleidingsinfo"></input>
        </div>
        <div>
            <label for="start_year">Beginjaar</label>
        </div>
        <div>
            <input type="number" id="start_year" name="start_year"></input>
        </div>                    
        <div>
            <label for="end_year">Eindjaar</label>
        </div>
        <div>
            <input type="number" id="end_year" name="end_year"></input>
        </div>     
        <button type="submit">Voeg toe</button>
    </form>
</div>

<?php require 'views/partials/footer.view.php' ?>