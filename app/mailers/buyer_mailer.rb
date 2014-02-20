# encoding: UTF-8
class BuyerMailer < ActionMailer::Base

  default from: 'bereg.beseda@ukr.net'

  def buyer_welcome_email(buyer)
    @buyer = buyer
    mail(to: @buyer.email, subject: 'Запись семинара по психологии')
  end

end
