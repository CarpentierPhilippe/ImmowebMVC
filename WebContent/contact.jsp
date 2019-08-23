
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
	<title>contact</title>
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

	<div class="row offset-3 my-5">
		<div class="col-lg-6">
			<img class="diapocontact" src="images/contactlogo.png">
		</div>	
	</div>
	
	<div class="card">
		<div class="card-header">
		    <p><h3 class="offset-4">Vous avez un projet immobilier</h3></p>
		</div>
		<div class="card-body offset-3">
		    <blockquote class="blockquote mb-0 tofcontact">
		    	
		      	<span>REAL ESTATE vous apporte des solutions concrètes: conseil et expertise</span>
		   
		    </blockquote>
		</div>
	</div>

		<div class="container mt-5">
			<div class="row">
				<div class="col-lg-4">
					<div class="card card1">
					  <div class="card-body">
						    <h5 class="card-title">Card title</h5>
						    <h6 class="card-subtitle mb-2 text-muted"><i class="fas fa-map-marker-alt fa-3x"></i></h6>
						    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
				</div>	
		
				<div class="col-lg-4">
					<div class="card card1">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<h6 class="card-subtitle mb-2 text-muted"><i class="fas fa-mobile-alt fa-3x"></i></h6>
							<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
					
				<div class="col-lg-4">	
					<div class="card card1">
					  <div class="card-body">
					    <h5 class="card-title">Card title</h5>
					    <h6 class="card-subtitle mb-2 text-muted"><i class="far fa-envelope fa-3x"></i></h6>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					  </div>
					</div>
				</div>
			</div>
		</div>			

	    <div class="container was-validated pt-4">
	    	<div class="row">
	    		<div class="col-lg-6">
	    			<section id="couleur1">
	    				<div class="bg-primary">
			    			<h4 class="connect pt-2 pb-3">Contacter Realestate</h4>
			    		</div>
		    				
				        <div class="form-group row">
				          	<div class="col-sm-10">
					          	<label for="project">Votre demande concerne :</label>
					            <input type="text" class="form-control" id="project" placeholder="Projet" required pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,40}$"> 
					        </div>    
				        </div>
				        <div class="form-group row">
				          	<div class="col-sm-10">
				            	<input type="text" class="form-control" id="last_name" placeholder="Nom" required pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,30}$">
				        	</div>	
				        </div>  
				        <div class="form-group row">
				        	<div class="col-sm-10">
				            	<input type="text" class="form-control" id="first_name" placeholder="Prenom" required pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,30}$">
				            </div>
				        </div>
				        <div class="form-group row">
				        	<div class="col-sm-10">
				            	<input type="email" class="form-control" id="username" placeholder="Email" required>
				            </div>
				        </div>
				        <div class="form-group row ml-0">
				        	<div class="col-sm-10">
				            	<textarea type="textera" class="form-control" id="Message" placeholder="Message" required></textarea>
				            	<small id="project" class="form-text text-muted">Votre demande sera envoyée à l’agence Realestate.</small>
				            </div>
				        </div>
				        <div class="form-group row ml-0">
				        	<div class="col-sm-10">
				          		<button type="submit" class="btn btn-primary">Envoyer</button>
				          	</div>
				        </div>  
				        </section>
		        </div>
		    </div>      
      	</div>

	<%@ include file="_footer.html" %>
	
</body>
</html>


