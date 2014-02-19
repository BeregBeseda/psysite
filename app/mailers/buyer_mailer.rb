# encoding: UTF-8
class BuyerMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def buyer_welcome_email(buyer)
    @buyer = buyer
    @url  = 'http://example.com/login'
    mail(to: @buyer.email, subject: 'Welcome to My Awesome Site')
  end

end
