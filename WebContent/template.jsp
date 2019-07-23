<!DOCTYPE html>
<!-- ajouter une annonce -->
<head>
        <meta charset = "utf-8"/>
        <title>Acceuil</title>

        <!-- plugins -->
        <!-- JQuery -->
        <script src="http://localhost/realestate/pack/jquery-3.4.1.js"></script>
        <script src="pack/jquery-ui-1.12.1/jquery-ui.js"></script>
        <!-- Boostrap -->
        <link rel="stylesheet" href="http://localhost/realestate/pack/bootstrap-4.3.1-dist/css/bootstrap.css">
        <script src="http://localhost/realestate/pack/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
        <script src="http://localhost/realestate/pack/jQuery-Bootstrap-4-Typeahead-Plugin/bootstrap3-typeahead.js"></script>
        <!-- FontAwasome -->
        <link rel="stylesheet" href="http://localhost/realestate/pack/fontawesome/css/all.css">

        <!-- Original -->
        <link rel="stylesheet" href="css/.css"/>
        <!-- DEBUG MODE
        <link rel="stylesheet" href="css/debug.css"/>
        -->
</head>

<body>
    <!-- -- load le header -- -->
    <?php
        //chargement du header
        echo file_get_contents('header.html');
    ?>
    <nav>
        <ul>
            <li></li>
        </ul>
    </nav>
    
    <section></section>

    <aside></aside>

    <?php
    //chargement du footer
    echo file_get_contents('footer.html');
    ?>
</body>