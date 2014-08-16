$(function(){
    $('a').hover(
        function(ev){
            $(this).prev('i').css({"color":"rgb(177, 151, 18)"});
        },
        function(ev){
            $(this).prev('i').css({"color":"inherit"});
        });
});