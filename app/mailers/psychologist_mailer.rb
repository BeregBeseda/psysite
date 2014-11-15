# encoding: UTF-8
class PsychologistMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def psychologist_check_pers_pay(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: "Консультация с психологом")
    # Так как Вы захотели проконсультироваться
  end
  
  def psychologist_check_product_pay(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: "#{@order.title}")
    # Так как Вы захотели приобрести видеозапись семинара 
  end  

end

