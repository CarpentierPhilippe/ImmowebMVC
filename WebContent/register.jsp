
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>registerclient</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="fontawesome/css/all.css">
	<link rel="stylesheet" href="css/style1.css">
	<script src="jquery/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<script src="js/code.js"></script>
	

</head>
<body>

	<%@ include file="_header.html"%>
	
	<div class="container">
	  <div class="row">

		    <div class="col-lg-6 col-12">
		    	<section id="couleur1">
		    		<div class="bg-primary">
			    		<h4 class="connect pt-2 pb-3">Inscription</h4> 
			    	</div>
			    	<form action="" method="post" class="was-validated">

				    	<fieldset class="form-group ml-2">
						    <div class="row">
						      	<legend class="col-form-label col-sm-3 col-12 pt-0">Civilité</legend>
						      	<div class="col-sm-9 col-12">
							        <div class="form-check">
							        	<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" required>
							        	<label class="form-check-label" for="gridRadios1">
							            	Madame
							          	</label>
							        </div>
							        <div class="form-check">
							          	<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2" required>
							          	<label class="form-check-label" for="gridRadios2">
							            	Monsieur
							          	</label>
							        </div> 
						      	</div>
						    </div>
						</fieldset>

						<!--div class="form-group row">
							<div class="form-group col-sm-2 col-12">
								<label for="user_type">Vous êtes</label>
							</div>
							<div class="col-md-4 col-12 col-form-label">
								<select id="user_type" class="form-control" required>
									<option selected>Choisir...</option>
									<option value="moderateur">Moderateur</option>
									<option value="client">Client</option>
									<option value="vendeur">Vendeur</option>
								</select>
							</div>
						</div -->

						<!-- div class="form-group row">
						    <label for="name" class="col-sm-3 col-form-label">Votre Avatar</label>
						    <div class="col-sm-9">
						      <input type="text" class="form-control" id="name" placeholder="Votre Avatar" required>
						      <div class="valid-feedback">ok</div> < ces deux div permet de dire que si le champ est valide ou pas>
						      <div class="invalid-feedback">pas ok</div>
						    </div>
				  		</div -->

				  		<div class="form-group row">
						    <label for="last_name" class="col-sm-2 col-12 col-form-label">Nom</label>
						    <div class="col-sm-10 col-12">
						      <input type="text" class="form-control" id="last_name" required pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,30}$">
						    </div>
				  		</div>

				  		<div class="form-group row">
						    <label for="first_name" class="col-sm-2 col-12 col-form-label">Prénom</label>
						    <div class="col-sm-10 col-12">
						      <input type="text" class="form-control" id="first_name" required pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,30}$">
						    </div>
				  		</div>

				  		<div class="form-group row">
						    <label for="username" class="col-sm-2 col-12 col-form-label">Email</label>
						    <div class="col-sm-10 col-12">
						      <input type="email" class="form-control" id="username" placeholder="Votre mail" required>
						    </div>
				  		</div>

				  		<div class="form-group row">
						    <label for="password" class="col-sm-3 col-12 col-form-label">Mot de passe</label>
						    <div class="col-sm-9 col-12">
						      <input type="password" class="form-control" id="password" placeholder="Votre mot de passe" required pattern="(?=^.{8,} $)((? =.*\D)|(? =.*\W+))(?![.\ N])(?=.*[AZ])(? =.*[az]).*$">
						    </div>
				 		 </div>

				  		<div class="form-group row">
						    <label for="phone" class="col-sm-2 col-12 col-form-label">Numéro</label>
						    <div class="col-sm-10 col-12">
						      <input type="tel" class="form-control" id="phone" placeholder="Votre Fixe ou Portable" required pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$">
						    </div>
				  		</div>

				  		<div class="form-group row ml-2">
						    <div class="col-sm-10 col-12">
						      <div class="form-check">
						        <input class="form-check-input" type="checkbox" id="accord" required>
						        <label class="form-check-label" for="accord">
						          <a target="_blank" href="cgu.html">J'accepte les CGU</a>
						        </label>
						      </div>
						    </div>
				  		</div>

				  		<div class="form-group row ml-2">
						    <div class="col-sm-10 col-12">
						      <button type="submit" class="btn btn-primary">S'inscrire</button>
						    </div>
				  		</div>
				    </form>
			    </section>
			</div>      
	  </div>
	</div>

	<%@ include file="_footer.html" %>

</body>
</html>