# encoding: UTF-8
class 	AdminMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def try_access_to_un_order(order)
    @order = order
    mail(to: 'bereg.beseda@gmail.com', subject: 'Psy: unorder')
  end

end
