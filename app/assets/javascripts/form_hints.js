$(document).ready(function(){
    $(".input-address").click(function(){
        $("#top_field").text("Заботимся о безопасности");
    });

    $(".input-name").click(function(){
        $("#top_field").text("Как к Вам обращаться");
    });

    $(".input-message").click(function(){
        $("#top_field").text("Message");
    });

    $(".input-address").focus(function(){
        $("#top_field").text("Заботимся о безопасности");
    });

    $(".input-name").focus(function(){
        $("#top_field").text("Как к Вам обращаться");
    });

    $(".input-message").focus(function(){
        $("#top_field").text("Message");
    });
});

