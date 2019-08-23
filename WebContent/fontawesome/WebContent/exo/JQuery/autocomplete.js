$(document).ready(
    function () {
        $(".typeahead").typeahead({
            source: function (query, process) {
                url = "http://localhost/realestate/server/loadcities.php?q=" + query;
                $.get(url, function (data) {
                    var cities = new Array();
                    for (var elemnt in data)
                        cities.push(data[elemnt].name);
                return process(cities);
                });
            }
        });
    }
);

// //initialize marche normalement

// $(document).ready(function(){
//     $(".typeahead").typeahead({source : availableTags = ["ActionScript","AppleScript"]});
// });


// //initialize
// $(document).ready(function(){
//     //pourquoi ça marche pas ? ça devrait renvoyer une liste, mais ça revois le code.
//     //marche pas car transforme linstingvvile in a function
//     var listingvville = function() {
//         var availableTags = [
//             "ActionScript",
//             "AppleScript"
//             ];
//         console.log("avaibaleTags : \n" + availableTags);
//         return  availableTags;
//     };
//     console.log(listingvville);
//     $(".typeahead").typeahead({
//         source : listingvville
//     });
// });

// //initialize
// $(document).ready(function(){
//     //marche, yay
//     var listingvville = function() {
//         var availableTags = [
//             "ActionScript",
//             "AppleScript"
//             ];
//         console.log("avaibaleTags : \n" + availableTags);
//         return  availableTags;
//     };

//     console.log(listingvville());
//     $(".typeahead").typeahead({source : listingvville()});
// });

//initialize
// $(document).ready(function(){
//     //marche pas car on ne peut pas définir et executer une variable en même temps
//     $(".typeahead").typeahead(
//         {source : function(){
//             var availableTags = [
//                 "ActionScript",
//                 "AppleScript"
//                 ];
//             console.log("avaibaleTags : \n" + availableTags);
//             return  availableTags;
//         }
//     });
// });


// $(document).ready(function(){
//     var url = "http://localhost/realestate/server/loadcities.php?q=Paris"
//     var cities = new Array();
//     $.get(
//         url, function(data){
//             for (var elemnt in data)
//                 cities.push(data[elemnt].name);
//         }
//     );

//     $(".typeahead").typeahead(
//         {
//             source : function(query, process) {
//                 return process(cities);
//             }
//         }
//     );
// });

// initialize
// $(document).ready(function(){
//     $(".typeahead").typeahead({
//         source : listing(query, process),
//     });
// });

// function listing(query,process) {
//     url = "http://localhost/realestate/server/loadcities.php?q="+query;
//     return $.get(url, getdata(data));
// }

// function getdata(data){
//     var cities = new Array();
//     for (var elemnt in data){
//         cities.push(data[elemnt].name);
//     }
//     return process(cities);
// }

// function inputHasChanged(inp){
//     $.get ("http://localhost/realestate/server/loadcities.php?q="+inp, function(data){
//         console.log("SUCCES!!!! SHORT ");
//         console.log(data);
//     });
// }

// function loadsource(query, response){
//     $.get ("http://localhost/realestate/server/loadcities.php?q="+query.val(), function(data){
//         console.log("SUCCES!!!! SHORT ");
//         console.log(data);
//     });

// }