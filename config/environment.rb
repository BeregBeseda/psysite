#encoding: utf-8

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Psysite::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'mail.google.com',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'bereg.beseda',
  :password       => 'sh19781968199719gmail',
  :domain         => 'psysite.herokuapp.com',
  :enable_starttls_auto => true
}

Time::DATE_FORMATS[:ru_datetime] = "Вебинар начинается %d.%m.%Y в %k:%M"
