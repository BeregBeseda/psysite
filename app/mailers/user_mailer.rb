# encoding: UTF-8
class UserMailer < ActionMailer::Base

  default from: 'bereg.beseda@ukr.net'

  def user_welcome_email(user)
    @user = user
    mail(to: @user.name, subject: 'Вебинар')
  end

end
