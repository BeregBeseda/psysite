class OrderMailer < ActionMailer::Base
  default from: "bereg.beseda@ukr.net"
  
  def confirm_pay(order)
    @order = order
    @pay_url = "http://psysite.herokuapp.com/for_pay_click/#{@order.name}/#{@order.sum_for_pay}"
    @form_url = "http://psysite.herokuapp.com/confirm_form/#{@order.akey}/#{@order.id}"
  end
end
