
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
	<title>achatImmo</title>
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

		<div class="row mt-5 offset-1">
			<div class="col-lg-6 col-12">
				<img class="diapo" src="images/immologoachat.jpg">
			</div>	
		</div>
	
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-12">
					<a href="">
						<div class="card bg-dark text-white">
						  <img src="images/immo1.png" class="card-img" alt="...">
						  <div class="card-img-overlay">
						    <h5 class="card-title">Maison</h5>
						    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional</p>
						    <p class="card-text">Last updated 3 mins ago</p>
						  </div>
						</div>
					</a>	
				</div>
	
				<div class="col-lg-4 col-12">
					<a href="">
						<div class="card bg-dark text-white">
						  <img src="images/immo5.png" class="card-img" alt="...">
						  <div class="card-img-overlay">
						    <h5 class="card-title">Appartement</h5>
						    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional</p>
						    <p class="card-text">Last updated 3 mins ago</p>
						  </div>
						</div>
					</a>	
				</div>
			
				<div class="col-lg-4 col-12">
					<a href="">
						<div class="card bg-dark text-white">
						  <img src="images/immo3.png" class="card-img" alt="...">
						  <div class="card-img-overlay">
						    <h5 class="card-title">Parkimg</h5>
						    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional</p>
						    <p class="card-text">Last updated 3 mins ago</p>
						  </div>
						</div>
					</a>	
				</div>
		</div>
	</div>

	<%@ include file="_footer.html" %>

</body>
</html>