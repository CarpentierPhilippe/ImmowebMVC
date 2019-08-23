
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Immo</title>
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
	
	<div class="row mt-5 offset-1 diapo">
				
		    <div class="card text-center mb-3 mt-3 border-secondary offset-3">
		        <div class="card-header bg-dark">
		          <ul class="nav nav-tabs card-header-tabs">
		            <li class="nav-item">
		              <a class="nav-link active" href="#" id="acheter">Acheter</a>
		            </li>
		            
		            <li class="nav-item">
		              <a class="nav-link exple" href="#" id="louer">Louer</a>
		            </li>
		            
		            <li class="nav-item">
		              <a class="nav-link" href="#" tabindex="-1" id="vendre">Vendre</a>
		            </li>
		          </ul>
		        </div> 
		      <div class="card-body mt-3"> 
		        <div class="form-inline">
		          <input type="text" name="acheter" class="form mb-2 mr-4" placeholder="Dans quelle ville? Quartier?">
		          <input type="text" class="form mb-2 mr-4" placeholder="Votre budget?">
		        </div>  
		        <div class="mb-2">
		          <button type="button" class="btn btn-outline-primary btn-sm" for="house">Maison</button>
		          <button type="button" class="btn btn-outline-primary btn-sm" for="Apartment">Appartement</button>
		          <button type="button" class="btn btn-outline-primary btn-sm" for="parking" id="parking">Parking</button> 
		          <a href="#" class="card-link">Recherche avancée</a>   
		        </div>
		          <a type="submit" href="resultat.html" class="btn btn-primary">Rechercher</a>
		      </div>
		    </div>
		</div>


	<span class="text-center"><h4>Les derniers immo </h4></span>

	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-12">
				<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
					    <div class="carousel-item active">
					        <img src="images/immo3.png" class="d-block w-100" alt="immo3">
					    </div>
					    <div class="carousel-item">
					      <img src="images/immo5.png" class="d-block w-100" alt="immo5">
					    </div>
					    <div class="carousel-item">
					      <img src="images/immo2.png" class="d-block w-100" alt="immo2">
					    </div>
					    <div class="carousel-item">
					      <img src="images/immo1.png" class="d-block w-100" alt="immo1">
					    </div>
					</div>
				</div>
			</div>

			<div class="col-lg-6 col-12">

				<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
					    <div class="carousel-item active">
					        <div class="d-block w-100">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam fugit dolor similique vero amet. Cupiditate ad dolores eveniet eaque at officia non odit consequatur rerum repellat beatae, maiores ea sint.</div>
					    </div>
					    <div class="carousel-item">
					      <div class="d-block w-100">Beatae veritatis aperiam reprehenderit ea sed, ducimus, nam ex. Deleniti deserunt voluptatem eveniet iste quos et cum minus veniam esse eum possimus magnam corporis, iure quod consectetur laudantium fuga dolore?</div>
					    </div>
					    <div class="carousel-item">
					      <div class="d-block w-100">Nemo omnis autem, quaerat praesentium assumenda repellendus rerum deleniti similique totam temporibus cum expedita vitae impedit fugiat fuga sint, officiis, at natus ipsa. Odio corrupti placeat, tempore, porro iste architecto!</div>
					    </div>
					    <div class="carousel-item">
					      <div class="d-block w-100">Cum sed, deleniti corporis explicabo pariatur! Magni tempora ab eius adipisci, illum deleniti, error aperiam cumque ullam dolore placeat eveniet cupiditate recusandae. Sint eum repudiandae autem ipsum quisquam, minima adipisci.</div>
					    </div>
					</div>
				</div>

				<!--div>
				<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam fugit dolor similique vero amet. Cupiditate ad dolores eveniet eaque at officia non odit consequatur rerum repellat beatae, maiores ea sint.</div>
				<div>Beatae veritatis aperiam reprehenderit ea sed, ducimus, nam ex. Deleniti deserunt voluptatem eveniet iste quos et cum minus veniam esse eum possimus magnam corporis, iure quod consectetur laudantium fuga dolore?</div>
				<div>Nemo omnis autem, quaerat praesentium assumenda repellendus rerum deleniti similique totam temporibus cum expedita vitae impedit fugiat fuga sint, officiis, at natus ipsa. Odio corrupti placeat, tempore, porro iste architecto!</div>
				<div>Cum sed, deleniti corporis explicabo pariatur! Magni tempora ab eius adipisci, illum deleniti, error aperiam cumque ullam dolore placeat eveniet cupiditate recusandae. Sint eum repudiandae autem ipsum quisquam, minima adipisci.</div>
				</div-->
			</div>

		</div>
	</div>

	<%@ include file="_footer.html" %>
	
</body>
</html>