# encoding: UTF-8
class PersEmailMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def per_pay_email(news_email)
    @news_email = news_email
    mail(to: "#{@news_email.email}", subject: 'Так как Вы захотели проконсультироваться с психологом онлайн...')
  end

end

