# encoding: UTF-8
class ProductsEmailMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def product_pay_email(news_email)
    @news_email = news_email
    mail(to: "#{@news_email.email}", subject: "#{$event_name}")
    # Так как Вы захотели приобрести видеозапись семинара 
  end

end

