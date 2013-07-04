//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jquery-ui

$(".modal_form").dialog({
    autoOpen: false,
    modal: true
});

$(".modal_button").click(function(){
    $(".modal_form").dialog("open");
});

