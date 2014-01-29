$(document).ready(function(){
    $(".input-address").focus(function(){
        $("#top_field").text(encodeURIComponent("Ваша персональная информация будет находиться в безопасности"));
    });

    $(".input-name").focus(function(){
        $("#top_field").text(encodeURIComponent("Как к Вам обращаться"));
    });

    $(".input-message").focus(function(){
        $("#top_field").text(encodeURIComponent("Если желаете, опишите в нескольких фразах, какую проблему Вы хотите решить"));
    });
});

