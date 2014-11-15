# encoding: UTF-8
class 	NewsMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def news_delivery_confirm(news_email)
    @news_email = news_email
    mail(to: "#{@news_email.email}", subject: 'Вы захотели получать новости психолога Татьяны Вакульчик...')
  end

end
