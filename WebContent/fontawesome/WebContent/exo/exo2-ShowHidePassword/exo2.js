$(document).ready(function(){
    console.log($('#password'));
    console.log($('#password').next());
    $('#password').next().click(
        function() {
            console.log('I was clicked');
            typ = $(this).prev().attr('type');
            console.log(typ);
            if (typ == 'password') {
                $(this).prev().attr('type','text');
                $(this).text('hide');
            }
            else {
                $(this).prev().attr('type', 'password');
                $(this).text('show');
            }
        }
    );
});