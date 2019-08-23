
function titre1() {
document.write("titre version 1");
}

function titre2() {
document.write("titre version 2");
}
titre1();
titre2();


function changeColor(elt, col) {
		elt.style.backgroundColor = col;
}

/*function hideAllDivs(div){
		bintou=document.getElementsByTagName('div'); // cette fonction permet de cacher tous les div demander par la fonction
		for(i=0; i<bintou.length; i++)
			bintou[i].style.display="none";
}*/

// Fonction qui fait disparaitre une div et la faire apparaitre.

function toggleAllDivs(div){
		bintou=document.getElementsByTagName('div'); // cette fonction permet de cacher tous les div demander par la fonction
		for(i=0; i<bintou.length; i++)
			toggleOneDiv(bintou[i]);

}

function toggleOneDiv(d){

		if ('none' == d.style.display){
			d.style.display = d.dataset.display; // cette fonction permet de cacher tous les div au clic et la faire apparaitre.
		} else {
			d.dataset.display = d.style.display;
			d.style.display = 'none';
		}
}

/* EXO1: quand la souris "est" sur la zone de l'image (mouseover) inverser les images. Puis quand la souris "quit
te" sur la zone de l'image (mouseleave) inverser les images.*/
	
function switchImage(i){
	tmp = i.src;
	i.src=i.dataset.img;
	i.dataset.img=tmp;
}

// Exo2 : exercice pour la diapo
function moveImg(id, n) { //id ='diaporama' , n 1 ou -1
	// RECUP DE L'IMAGE
	elt = document.getElementById(id);
	
	//SPLIT DE LA LISTE
	images = elt.dataset.imgs.split(',');

	// CHANGEMENT DU COMPTEUR
	compteur = elt.dataset.compteur;
	if (typeof(compteur) == 'undefined')
		compteur =0;
	else 
		compteur = Number(compteur) + n;

	// DEPASSEMENTS ??
	if (compteur<0) compteur = images.length-1;
	if (compteur>=images.length) compteur = 0;

	// PLACEMENT DE L'IMAGE
	elt.dataset.compteur = compteur;	
	elt.src='images/' + images[compteur] + '.png';
}

		// Méthode DOM 1
function initChevrons(){
	left=document.querySelector(".fa-chevron-left");
	right=document.querySelector(".fa-chevron-right");

	left.onclick=function(){moveImg('diaporama' ,-1);} // function() qui se trouve dans ces deux ligne sont des fonction annonyme
	right.onclick=function(){moveImg('diaporama', 1);} // une fonction annonyme est une fonction qui n'a pas de nom; 
													//donc c'est une fonction qu'on ne peut pas l'appéler de l'exterieur.
}

	// Methode DOM 2
function initAll() {

	// DIAPORAMA
	left = document.querySelector(".fa-chevron-left");
	right = document.querySelector(".fa-chevron-right");

	left.onclick = function() {moveImg('diaporama',-1);};
	right.onclick = function() {moveImg('diaporama',1);};

	// HIDE ALL
	btn = document.querySelector("body button");
	btn.onclick = function() { toggleAllDivs(); };

	moveImg('diaporama',1);


	img = document.querySelector("div.container>img");
	
	img.onmouseenter = function() { switchImage(this); };
	img.onmouseleave = function() { switchImage(this); };
}


//addEventListener(obj, 'nom_evenement', code_qui_gere_evenement); s'ecit comme sa addEventListener(monImage, 'mouseenter', opa);

// EXO : // 1°) Switch; 2°) Border 2px.

function chageBorder(elt,taille){
	elt.style.borderWidht = taille;
	elt.style.borderStyle = 'solid';
}

function init() {

	var monImage = document.querySelector('img[data-imgs]');
	var swi = function(){switchImage(this);}
	monImage.addEventListener('mouseenter', swi);
	monImage.addEventListener('mouseleave', swi);

	monImage.addEventListener('mouseenter', function(){
		changeBorder(monImage,'5px');});
	monImage.addEventListener('mouseleave', function(){
		changeBorder(monImage,'0px');})

}

// Methode Window

	// initAfterLoad() cette fonction permet de charger une seul fois; 
	//le mot size permet de charger autant de fois que la fonction demande.
displaySize= function() {
	spanX=document.getElementById("sx");
	spanX.innerHTML=window.innerWidth;
	spanY=document.getElementById("sy");
	spanY.innerHTML=window.innerHeight;
}

function initAfterLoad(){
	window.onresize = displaySize;
}

//window.onload = initAfterLoad;

window.onload = init;



