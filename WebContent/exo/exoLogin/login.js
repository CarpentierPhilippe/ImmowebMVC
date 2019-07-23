window.onload = function(){
    $('input[type="submit"]').click( function(){
        $.ajax({
            type: "POST",
            url: login.php,
            data: "passsword",
            success: function(data){console.log(data);},
            dataType: JSON
        });
    })
}

