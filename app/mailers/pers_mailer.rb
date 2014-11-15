# encoding: UTF-8
class PersMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def per_pay_email(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: 'Так как Вы захотели проконсультироваться с психологом онлайн...')
  end
  
  def pers_pay_fail_email(order)
    @order = order
    mail(to: "#{@order.news_email_email}", subject: 'Так как Вы захотели проконсультироваться с психологом онлайн...')
  end 

end

