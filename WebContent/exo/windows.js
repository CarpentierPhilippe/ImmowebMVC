//using Jquery
$(document).ready(function(){
    $(window).resize(function(){
        $("#sx").text($(window).width());
        $("#sy").text($(window).height());
    });
});



// //using Jquery
// $(document).ready(function(){
//     update();
//     $(window).resize();
// });

// function update(){
//     $("#sx").text($(window).width());
//     $("#sy").text($(window).height());
// }

// window.onload = function(){
//     update();
//     window.addEventListener("resize", update);
//     // window.onresize = update;
// }

// function update(){
//     document.getElementById("sx").innerHTML = window.innerWidth;
//     document.getElementById("sy").innerHTML = window.innerHeight;
// }


