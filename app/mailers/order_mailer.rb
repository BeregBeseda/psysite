class OrderMailer < ActionMailer::Base

  default from: "bereg.beseda@ukr.net"


  
  def confirm_pay(order)
    @order = order
    
    @url_name = URI.encode(@order.name)
    #@pay_url = "http://psysite.herokuapp.com/for_pay_click/#{@url_name}/#{@order.sum_for_pay.to_i}"
    @pay_url = "http://psysite.herokuapp.com/for_pay_click"    
    @form_url = "http://psysite.herokuapp.com/confirm_form/#{@url_name}/#{@order.akey}/#{@order.id}"
    
    mail(to: @order.email, subject: 'Консультация психолога')    
  end
  
  
  
  def confirm_info_for_psyc(order)
    @order = order
    unless @order.cool_time1.empty?
      @cool_time1 = "И хотел бы встретиться #{@order.cool_time1}"
    else  
      @cool_time1 = ''
    end
    @url_for_payed_is_true = "http://psysite.herokuapp.com/payed/#{@order.akey}/#{@order.id}/#{@order.akey_payed}"
    
    mail(to: 'bereg.beseda@gmail.com', subject: 'Оплата консультации')        
  end  
  
end
