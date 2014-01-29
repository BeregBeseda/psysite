$(document).ready(function(){
    $(".input-address").focus(function(){
        $("#top_field").text("Ваша персональная информация будет находиться в безопасности");
    });

    $(".input-name").focus(function(){
        $("#top_field").text("Как к Вам обращаться");
    });

    $(".input-message").focus(function(){
        $("#top_field").text("Если желаете, опишите в нескольких фразах, какую проблему Вы хотите решить");
    });
});

