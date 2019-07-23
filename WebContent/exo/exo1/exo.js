// Pour le DOM 1
window.onload = function initClics(){
    /*
    left = document.querySelector(".fa-chevron-circle-left");
    right = document.querySelector(".fa-chevron-circle-right");

    left.onclick = function(){ moveImg('diaporama',-1);};
    right.onclick = function(){ moveImg('diaporama',1);};

    document.querySelector("button#hideDiaporama").onclick = function(){hideDiaporama();};
    document.querySelector("button#showDiaporama").onclick = function(){showDiaporama();};
    document.querySelector("button#toggleDiaporama").onclick = function(){toggleDiaporama();};

    //DOM 2 use addEventListener
    document.querySelector("button#ajaxButton").addEventListener("click", ajaxSelect);
*/
    //using JQuery
    right = $(".fa-chevron-circle-right").get(0);
    right.click(function(){ moveImg('diaporama',1);});
    $(".fa-chevron-circle-left").click(function(){ moveImg('diaporama',-1);});

    $("button#hideDiaporama").click(function(){hideDiaporama();});
    $("button#showDiaporama").click(function(){showDiaporama();});
    $("button#toggleDiaporama").click(function(){toggleDiaporama();});

    $("button#ajaxButton").click(ajaxSelect);
}


function moveImg(name, number){
    //récupère le diapo
    var diaporama = document.getElementById(name);
    //récupère la liste d'image et la met dans un tableau
    var images = diaporama.dataset.imgs.split(',');
    //récupère le compteur
    var compteur = diaporama.dataset.compteur;
    //si il n'y a pas de compteur : on initialise à 0
    if (typeof(compteur)=='undefined')
        compteur = 0;
    //ajout ou soustrait en fonction du nouveau placement d'image
    compteur = Number(compteur)+number;
    //regarde si on dépasse le tableau ou non
    if (compteur < 0)
        compteur = images.length-1;
    if(compteur >= images.length)
        compteur = 0;
    //charge l'image correspondante au tableau
    diaporama.setAttribute("src", images[compteur]+".png");
    //update l'attribut (ou l'ajoute si besoin)
    diaporama.setAttribute("data-compteur", compteur)
}


function hideDiaporama(){
    var diaporama = document.getElementById('diaporama');
    diaporama.parentNode.style.display = "none";
}

function showDiaporama(){
    var diaporama = document.getElementById('diaporama');
    diaporama.parentNode.style.display = "block";
}

function toggleDiaporama(){
    var diaporamaBlock = document.getElementById('diaporama').parentNode;

    
    if (typeof(diaporamaBlock.dataset.hidden) == 'undefined' )
        diaporamaBlock.setAttribute("data-hidden", "false");

    if (diaporamaBlock.dataset.hidden == "false"){
        diaporamaBlock.setAttribute("data-hidden", "true");
        diaporamaBlock.style.display = "none";
    }else{
        diaporamaBlock.setAttribute("data-hidden", "false");
        diaporamaBlock.style.display = "block";
    }
}
//utilisation d'ajax
function ajaxDiaporama(){
    //créé l'objet qui permet de communiquer
    xhr = new XMLHttpRequest();
    // prépare la réponse
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4){
            if(xhr.status == 200){
                //OK
                console.log(xhr.responseText)
            }else{
                //pas ok
                console.log(xhr.responseText)
            }
        }else{
        }
    }
    //ppose la question
    xhr.open('GET', 'http://localhost/realestate/exo/complements.txt', true);
    xhr.send(null);
}

function ajaxSelect(){
    //créé l'objet qui permet de communiquer
    xhr = new XMLHttpRequest();
    // prépare la réponse
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4){
            if(xhr.status == 200){
                types = JSON.parse(xhr.responseText);
                selectbox = document.getElementsByName('selectEstates')[0];
                removeOptions(selectbox);
                console.log(types);
                for(i=0; i< types.length; i++){
                    addOption(selectbox, types[i].option, types[i].value);
                }
            }else{
                //pas ok
                console.log(xhr.responseText)
            }
        }else{
        }
    }
    //ppose la question
    xhr.open('GET', 'http://localhost/realestate/exo/realestates.json', true);
    xhr.send(null);
}

function removeOptions(selectbox){
    while(selectbox.options.length > 0)
        selectbox.remove(0);
}

function addOption(eselectboxlt, txt, val){
    var option = document.createElement("option");
    option.text = txt;
    option.value = val;
    selectbox.add(option);
}