//initialize
$(document).ready(function(){
    var cities = new Array();
    var $inputCity =$("input#city");

    $inputCity.typeahead({
        source: function (query, process) {
            url = "http://localhost/realestate/server/loadcities.php?q=" + query;
            $.get(url, function (data) {                
                for (var elemnt in data){
                    cities.push(data[elemnt]);
                }
            return process(cities);
            });
        }
    });

    $inputCity.change(function(){
        var current = $inputCity.typeahead("getActive");
        console.log(current);
        if (current) {
            $inputCity.val(current);
          if (current== $inputCity.val()) {
            // This means the exact match is found. Use toLowerCase() if you want case insensitive match.
            console.log("matched");
            console.log(current.name);
            console.log($inputCity.val());
          } else {
            // This means it is only a partial match, you can either add a new item
            // or take the active if you don't want new items
            console.log("partial-match");
            console.log(current.name);
            console.log($inputCity.val());
          }
        } else {
          // Nothing is active so it is a new value (or maybe empty value)
          console.log("no-match");
          console.log(current.name);
          console.log($inputCity.val());
        }
    });


    //empeche l'envoie si le formulaire n'est pas valide
    $('form#register').submit(
        function (evt){
            if (!$(this).valid()){
                //vue d'une popup
                evt.preventDefault();
            }
        }
    );
    //envoyer un formulaire
    //document.querySelector('form#register').submit();

});



function onRealStateTypeChange(elt){
    var allspans = document.querySelectorAll("form>span");
    for (i =0 ; i< allspans.length; i++) {
        onespan = allspans[i];

        isReq = (onespan.id == elt.value);

        if (!isReq) 
            onespan.classList.add("hidden");
        else
            onespan.classList.remove("hidden");

        allreqs = onespan.getElementsByClassName('required');
        for (j =0 ; j< allreqs.length; j++) {
            if (isReq) {
                allreqs[j].setAttribute('required',true);
            }
            else {
                allreqs[j].removeAttribute('required');
            }
        }
    }
}

function highlightRequired(){
    allreqs = document.querySelectorAll('[required]');
    for (i =0 ; i< allreqs.length; i++) {
        if (allreqs[i].value =="") {
            allreqs[i].classList.add("border-danger");
            allreqs[i].classList.remove("border-info");
        }
        else {
            allreqs[i].classList.add("border-info");
            allreqs[i].classList.remove("border-danger");
        }
    }
}

function stopHighlightRequired(){
    allreqs = document.querySelectorAll('[required]');
    for (i =0 ; i< allreqs.length; i++) {
        allreqs[i].classList.remove("border-danger");
        allreqs[i].classList.remove("border-info");
    }
}