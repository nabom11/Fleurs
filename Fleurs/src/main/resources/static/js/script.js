$(function(){
    $("nav .main>li").hover(function(){
        $(this).children("nav .sub").slideToggle();
    });
    
    $("#nav2 .main>li>a").click(function(){
        $(this).next().slideToggle();
        $("#nav2 .main>li>a").not(this).next().slideUp();
        return false;
    }); 
    
    $("#menuBtn").click(function(){
       $("#nav2").slideToggle(); 
    });
});