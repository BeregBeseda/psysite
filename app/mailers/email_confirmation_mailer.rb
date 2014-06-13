# encoding: UTF-8
class EmailConfirmationMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def email_confirmation(news_email)
    @news_email = news_email
    mail(to: "#{@news_email.email}", subject: 'Вы захотели получать новости психолога Татьяны Вакульчик...')
  end

end
