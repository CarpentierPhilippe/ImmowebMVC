<!DOCTYPE html>
<!-- ajouter une annonce -->
<head>
        <meta charset = "utf-8"/>
        <title>Acceuil</title>

        <!-- plugins -->
        <!-- JQuery -->
        <script src="pack/jquery-3.4.1.js"></script>
        <script src="pack/jquery-ui-1.12.1/jquery-ui.js"></script>
        <!-- Boostrap -->
        <link rel="stylesheet" href="pack/bootstrap-4.3.1-dist/css/bootstrap.css">
        <script src="pack/bootstrap-4.3.1-dist/js/bootstrap.js"></script>
        <script src="pack/jQuery-Bootstrap-4-Typeahead-Plugin/bootstrap3-typeahead.js"></script>
        <!-- FontAwasome -->
        <link rel="stylesheet" href="pack/fontawesome/css/all.css">

        <!-- Original -->
        <link rel="stylesheet" href="css/style.css"/>
        <!--link rel="stylesheet" href="css/debug.css"/-->
</head>

<body>
<div class="bg"></div>
    <%@ include file="header.jsp" %>
        <!-- NAVIGATION -->       
 
        <!-- RECHERCHE PRINCIPALE -->
        <div style="display:none">
            <!-- Afficher une grande image au milieu -->
            <img class="cover" src="images/Banner.jpg">
            <!-- Afficher la barre de recherche à l'interieur de l'image -->
            <!-- FORMULAIRE DE RECHERCHE -->
            <span class="centered container">
                    <h1>Recherche</h1>
            </span>
            <form id="recherche" class="centered container col-md-4" action="php/register.php" method="POST">
                <select class="form-control form-group" name="transaction_type" id="transaction_type">
                    <option value="location">Location</option>   
                    <option value="achat">Achat</option>
                    <option value="vente">Vente</option>
                </select>
                
                <div class="form-row centered">
                    <div class="form-group col-md-5">
                            <label for="inputCity">Ville</label>
                            <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-5">
                            <label for="inputPrice">Prix</label>
                            <input type="text" class="form-control" id="inputPrice">
                    </div>
                    <div class="form-group col-md-2 centered align-self-end">
                        <input type="submit" value="envoyer">
                    </div> 
                </div>
                <!-- chekcboxes pour les type de biens -->
                <div class="centered">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="housecheckbox" value="house">
                        <label class="form-check-label" for="inlineCheckbox1">Maison</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="apartmentcheckbox" value="apartment">
                        <label class="form-check-label" for="inlineCheckbox1">Apartement</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="parkingcheckbox" value="parking">
                        <label class="form-check-label" for="inlineCheckbox1">Parking</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="checkbox" id="landcheckbox" value="land">
                        <label class="form-check-label" for="inlineCheckbox1">Terrain</label>
                    </div> 
                </div>
            </form>
        </div>
        <!-- Coup de coeur -->
        <section class="container">
            <!-- DIAPORAMA -->
            <div class="row">
                <!-- images-->
                <div class="col-md-6">
                    <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/pic1.jpg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="images/pic1.jpg" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="images/pic1.jpg" class="d-block w-100" alt="...">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <!-- Description du coup de coeur -->  
                <div class = "col-md-6">
                    <div class="card" style="height:100%">
                        <div class="card-body">
                            <h5 class="card-title">Titre</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Prix</h6>
                            <p class="card-text">Some quick example text to build on the  title and make up the bulk of the card's content.</p>
                        </div>
                        <div class="card-footer bg-transparent border-success">
                            <a href="#" class="card-link">
                                <button type="button" class="btn btn-outline-danger">
                                    <i class="far fa-heart"></i> Favoris
                                </button>
                            </a>
                            <a href="#" class="card-link">
                                <button type="button" class="btn btn-outline-primary align-self-end">Plus d'infos</button>
                            </a>
                        </div>
                    </div>
                    <!-- <div class="row">
                        <div class="col-md-6">
                            <h5>Titre</h5>
                        </div>
                        <div class="col-md-6">
                            <h5>Prix</h5>
                        </div>
                    </div>
                    <div>
                        <p>Adresse</p>
                        <p>Nombre de chambre</p>
                        <p>Etage, Piscine, tout pleins de trucs</p>
                    </div>
                    <div class="align-self-end toHighlight">
                            <div class="col-md-6">
                                <button type="button" class="btn btn-outline-danger"><i class="far fa-heart"></i> Favoris</button>
                            </div>
                            <div class="col-md-6">
                                <button type="button" class="btn btn-outline-primary align-self-end">Plus d'infos</button>
                            </div>
                    </div>                     -->
                </div>
            </div>
        </section>
        <!-- autres offres -->
        <section>
            <div class="container">
                <h2>Nouveautés</h2>
            </div>
            <div class="row justify-content-md-center">
                <div class="card-deck col-md-10">
                    <div class="card">
                        <img class="card-img-top" src="images/pic1.jpg" alt="Card image cap" style ="height:250px; width:auto">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 class="card-title">Titre</h5>
                                </div>
                                <div class="col-md-6">
                                    <h5 class="card-title text-right">Prix</h5>
                                </div>
                            </div>
                            <p class="card-text">Adresse</p>
                            <p class="card-text">Nombre de chambre</p>
                            <p class="card-text">Etage, Piscine, tout pleins de trucs</p>
                            <div class="row">
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-outline-primary">Plus d'infos</button>
                                    </div>
                                    <div class="col-md-6">
                                        <i class="far fa-heart"></i>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img class="card-img-top" src="images/pic2.jpg" alt="Card image cap" style ="height:250px; width:auto">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 class="card-title">Titre</h5>
                                </div>
                                <div class="col-md-6">
                                    <h5 class="card-title text-right">Prix</h5>
                                </div>
                            </div>
                            <p class="card-text">Adresse</p>
                            <p class="card-text">Nombre de chambre</p>
                            <p class="card-text">Etage, Piscine, tout pleins de trucs</p>
                            <div class="row">
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-danger"><i class="far fa-heart"></i> Favoris</button>
                                </div>
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-outline-primary">Plus d'infos</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img class="card-img-top" src="images/pic3.jpg" alt="Card image cap" style ="height:250px; width:auto">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 class="card-title">Titre</h5>
                                </div>
                                <div class="col-md-6">
                                    <h5 class="card-title text-right">Prix</h5>
                                </div>
                            </div>
                            <p class="card-text">Adresse</p>
                            <p class="card-text">Nombre de chambre</p>
                            <p class="card-text">Etage, Piscine, tout pleins de trucs</p>
                            <div class="row">
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-outline-danger"><i class="far fa-heart"></i> Favoris</button>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-outline-primary">Plus d'infos</button>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php
        //chargement du footer
        echo file_get_contents('footer.html');
        ?>
    </body>
       
</html>