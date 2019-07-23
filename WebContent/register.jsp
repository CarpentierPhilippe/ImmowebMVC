<!DOCTYPE html>
<!-- ajouter une annonce -->
<head>
        <meta charset = "utf-8"/>
        <script src="un_fichier_javascript.js"></script>
        <title>Register</title>
        <script src=""></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css"/>
</head>

<body>
<?php>
    //chargement du header
    echo file_get_contents('header.html');
<?>
    <!-- ajouter une annonce-->
    <div class="container">
    <section class="col-sm-8">
        <form action="php/register.php" method="POST">
            <div class="form-group">
                <label for="username">Email</label>
                <input type="email" class="form-control" name="username" id="username" placeholder="email@example.com" required>
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>

            <div class="form-groups">
                <label for="password">Mot de passe </label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Au moins 7 lettres et 1 chiffre" required>
            </div>

            <div class="form-groups">
                <p>Votre adresse ne semble pas enregistré dans notre base de donnée.</p>
                Créer une nouvelle adresse <input type="checkbox" id="newaccount">
            </div>

            <span type="hidenewaccount">
                <div class="form-groups row ">
                    <div class="col-sm-1 col-form-label">
                        <label for="fem">Mme </label>
                        <input type="radio" name="user_type" value="Mme" id="fem">
                    </div>
                    <div class="col-sm-1 col-form-label">
                        <label for="hom">M </label>
                        <input type="radio" name="user_type" value="M" id="hom">
                    </div>
                </div>
            </span>

            <span type="hidenewaccount">
                <div class="form-groups">
                    <label for="last_name">Nom</label>
                    <input type="text" class="form-control" name="last_name" id="last_name" placeholder="" required>
                </div>
            </span>

            <span type="hidenewaccount">
                
                <div class="form-groups">
                    <label for="first_name">Prenom : </label>
                    <input type="text" class="form-control" name="first_name" id="first_name" placeholder="" required>
                </div>
            </span>

            <span type="hidenewaccount">
                    <div class="form-groups">
                        <label for="passwordtest">Retappez le mot de passe : </label>
                        <input type="passwordtest" class="form-control" name="passwordtest" id="passwordtest" placeholder="Au moins 7 lettres et 1 chiffre" required>
                    </div>
                </span>

            <span type="hidenewaccount">
                <div class="form-groups">
                    <label for="phone">Téléphone : </label>
                    <input type="tel" class="form-control" name="phone" id="phone" pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$">
                </div>
            </span>

            <span type="hidenewaccount">
                <label for="role" >Role : </label>
                <select name="role" id="role" required>
                    <option value="c">Client</option>
                    <option value="a">Vendeur/loueur</option>
                    <option value="m">Modérateur</option>
                </select>
            </span>

            <span type="hidemodaretor">
                    <div class="form-groups">
                        <label for="name">Nom du compte :</label>
                        <input type="text" class="form-control" name="name" id="name">
                    </div>
            </span>
            
            <input type="submit" value="Créé un compte / Se connecter">

            <span type="hidemodaretor"></span>
                <input type="checkbox" required>
                <a target="_blank" href="cgv.html">J'accepte les CGV</a>
            </span>
        </form>
    </section>
</div>
</body>
