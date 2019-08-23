
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
	<title>compte</title>
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
		
	<div class="compte">
		<h1>Mon Compte</h1>
	</div>	


	<div class="container mr-5">	
		<div class="row">
			<div class="col-sm-4">
				    <div class="card">
				      	<div class="card-body">
					        <a href="login.html"><h5 class="card-title"></h5></a>
					        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
					        <a href="#" class="btn btn-primary">Go somewhere</a>
				    	</div>
				</div>
			</div>
		</div>
	</div>
	
	<span><h3>Mes Favoris</h3></span>
	<div class="container mt-5">
		<div class="row">
			<div class="col-lg-4">
				<div class="card card1">
				  	<div class="card-body">
					    <h5 class="card-title">Card title</h5>
					    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="card-link">Card link</a>
					    <a href="#" class="card-link">Another link</a>
				  	</div>
				</div>
			</div>	

			<div class="col-lg-4">
				<div class="card card1">
				  	<div class="card-body">
					    <h5 class="card-title">Card title</h5>
					    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="card-link">Card link</a>
					    <a href="#" class="card-link">Another link</a>
				  	</div>
				</div>
			</div>

			<div class="col-lg-4">
				<div class="card card1">
				  	<div class="card-body">
					    <h5 class="card-title">Card title</h5>
					    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="card-link">Card link</a>
					    <a href="#" class="card-link">Another link</a>
				  	</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="_footer.html" %>

</body>
</html>
	
