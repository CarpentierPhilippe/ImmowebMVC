<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- ajouter une annonce -->
<head>
        <title>Déposer une annonce</title>

        <meta charset = "utf-8"/>
        <!-- plugins -->
        <script src="jquery-3.4.1/jquery-3.4.1.js"></script>
        <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
        <script src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
        <script src="jQuery-Bootstrap-4-Typeahead-Plugin/bootstrap3-typeahead.js"></script>

        <!-- original -->
        <script type="text/javascript" src="js/depot.js"></script>
        <link rel="stylesheet" href="css/style.css"/>
</head>

<body>
    <%@ include file="header.jsp" %>
    
    <!-- Titre -->
    <div class="centered container">
            <h1>Déposer une annonce</h1>
    </div>
    <!-- -- ajouter une annonce -- -->
    <section class="container col-md-6">
        <div class="form-group required" onmouseover="highlightRequired()" onmouseout="stopHighlightRequired()">
            (les sections avec * sont obligatoires)
        </div>
        <form action="php/register.php" method="POST">
            <!-- -- Choisir le type de transaction et le type de bien Ã  vendre -- -->
            <select class="form-control form-group" name="real_estate_type" id="real_estate_type" onchange="onRealStateTypeChange(this)" required>
                <option value="">Type de bien voulez vous enregistrer*</option>   
                <option value="apartment">Appartement</option>
                <option value="house">Maison</option>
                <option value="land">Terrain</option>
                <option value="parking">Parking</option>
                <option value="other_property">Autre</option>
            </select>
            <select class="form-control form-group" name="transaction_type" id="transaction_type" required>
                <option value="">Type de transaction*</option>   
                <option value="location">Location</option>
                <option value="vente">Vente</option>
            </select>
            <!-- -- propriétés génériques -- -->
            <div class="form-group row">
                <label for="area" class="col-sm-3 col-form-label">Surface*</label>
                <div>
                    <input type="number" class="form-control" name="area" id="area" required> 
                </div>
                <p class = "col-form-label">&nbsp;m²</p>
            </div>
            <div class="form-group row">
                    <label for="price" class="col-sm-3 col-form-label">Prix demandé*</label>
                    <div>
                        <input type="number" class="form-control" name="price" id="price" required>
                    </div>
                    <p class = "col-form-label">&nbsp;€</p>
            </div>
            <div class="form-group row">
                <label for="city" class="col-sm-3 col-form-label">Ville*</label>
                <div>
                    <input type="text" class="form-control" name="city" id="city" required> 
                    <input type="hidden" name="cityid" id ="cityid">
                </div>
            </div>
            <div class="form-group row">

            </div>
            <!-- -- propriétés de l'appartement -- -->
            <span id="apartment" class="hidden">
                <div class="form-group row">
                    <label for="rooms" class="col-sm-3 col-form-label">Nombre de chambres*</label>
                    <div>
                        <input type="number" class="form-control required" name="rooms" id="rooms"> 
                    </div>
                </div>
                <div class="form-group row">
                    <label for="floor" class="col-sm-3 col-form-label">Etage de l'appartement*</label>
                    <div>
                        <input type="number" class="form-control required" name="floor" id="floor">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="energy_level" class="col-sm-3 col-form-label">Catégorie energétique</label>
                    <div>
                        <select class="form-control" name="energy_level" id="energy_level">
                                <option value="null">Non signalé</option>   
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="F">F</option>
                                <option value="G">G</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="gas_level" class="col-sm-3 col-form-label">Emission de gas</label>
                    <div>
                        <select class="form-control" name="gas_level" id="gas_level">
                                <option value="null">Non signalé</option>   
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="F">F</option>
                                <option value="G">G</option>
                        </select>
                    </div>
                </div>
                <!-- -- check boxes -- -->
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="elevator">
                    <label class="form-check-label" for="inlineCheckbox1">Ascenseur</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="intercom">
                    <label class="form-check-label" for="inlineCheckbox2">interphone</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="balcony">
                    <label class="form-check-label" for="inlineCheckbox3">balcon</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="terrace">
                    <label class="form-check-label" for="inlineCheckbox4">terrace</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox5" value="garage">
                    <label class="form-check-label" for="inlineCheckbox5">garage</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox6" value="parking">
                    <label class="form-check-label" for="inlineCheckbox6">parking</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7" value="alarm">
                    <label class="form-check-label" for="inlineCheckbox7">alarme</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox8" value="digicode">
                    <label class="form-check-label" for="inlineCheckbox8">digicode</label>
                </div>
            </span>
            <!-- -- propriétés de la maison -- -->
            <span id="house" class="hidden">
                <div class="form-group row">
                    <label for="rooms" class="col-sm-3 col-form-label">Nombre de chambres*</label>
                    <div>
                        <input type="number" class="form-control required" name="rooms" id="rooms"> 
                    </div>
                </div>
                <div class="form-group row">
                    <label for="land_area" class="col-sm-3 col-form-label">Surface de jardin*</label>
                    <div>
                        <input type="number" class="form-control required" name="land_area" id="land_area">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="energy_level" class="col-sm-3 col-form-label">Catégorie energétique</label>
                    <div>
                        <select class="form-control" name="energy_level" id="energy_level">
                                <option value="null">Non signalé</option>   
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="F">F</option>
                                <option value="G">G</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="gas_level" class="col-sm-3 col-form-label">Emission de gas</label>
                    <div>
                        <select class="form-control" name="gas_level" id="gas_level">
                                <option value="null">Non signalé</option>   
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                                <option value="E">E</option>
                                <option value="F">F</option>
                                <option value="G">G</option>
                        </select>
                    </div>
                </div>
                <!-- -- check boxes -- -->
                
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7" value="alarm">
                    <label class="form-check-label" for="inlineCheckbox7">alarme</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="cellar">
                    <label class="form-check-label" for="inlineCheckbox1">Cave</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox8" value="swimming_pool">
                    <label class="form-check-label" for="inlineCheckbox8">piscine</label>
                </div>
            </span>
            
            <!-- Description (générique) -->
            <div class="form-group">
                <label for="description">Description du bien</label>
                <textarea class="form-control" name="description" id="description" rows="3"></textarea>
            </div>

            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                <label class="form-check-label" for="exampleCheck1">J'accepte les <a target="_blank" href="cgv.html"> CGV</a>*</label>
            </div>
            <div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </section>
    <?php
    //chargement du footer
    echo file_get_contents('footer.html');
    ?>

</body>