

//= require jquery_1_10_1
//= require_tree .

//= require form_hints
//= require maxlength
//= require angle
//= require clients_selects
//= require google_analytics


  
document.onLoad = function() {
  function show_pay_form() {
    document.getElementById('pay_form').style.display = 'block';
  }

  document.getElementById('div_on_click').onClick(show_pay_form);
}



// This is a manifest file that will be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.


