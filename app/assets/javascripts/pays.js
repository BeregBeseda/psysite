click_el = document.getElementByClassName('pay_via_ukr_card');
show_el = document.getElementByClassName('common_form_for_ukr_card_pay');

function show_common_pay_form_1(){  
  show_el.style.display = 'block';
}

click_el.onclick = show_common_pay_form_1;


