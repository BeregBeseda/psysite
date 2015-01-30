# encoding: UTF-8
class ProductEmailMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def product_pay_email(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: "#{@order.title}")
    # Так как Вы захотели приобрести видеозапись семинара 
  end
  
  def send_product_email(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: "#{@order.title}")    
  end
  
  def product_pay_fail_email(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: "#{@order.title}")
  end  

end

