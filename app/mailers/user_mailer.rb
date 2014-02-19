# encoding: UTF-8
class UserMailer < ActionMailer::Base

  default from: 'admin@happy-vita.com'

  def receive(email)
    
  end

  def user_welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
