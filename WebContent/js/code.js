
//								JQUERY


// Cacher le bouton parking au clic sur Acheter.
$(document).ready(function(){
	$("#parking").hide();
});


// Afficher le bouton parking au clic sur Louer.
$(document).ready(function(){
	$("#louer").click(function(){
		$("#parking").show();
	});
})


// Cacher le bouton parking au clic sur Vendre.
$(document).ready(function(){
	$("#vendre").click(function(){
		$("#parking").hide();
	});
})

/* Activer et desactiver au clic
$(document).ready(function(){
	$(".active:disabled, false").val();
});

$(document).ready(function(){
	$(".exple").click(function(){
		$("#louer:active, true").val();
	$(".active:disabled, true").val();	
	})
});*/

// Pop up sur le formulaire

/*$("#loginclient").popup({
	pagecontainer:"#fenetre1",
	escape:false;
});*/
