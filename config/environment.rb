#encoding: utf-8

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Psysite::Application.initialize!

Time::DATE_FORMATS[:ru_datetime] = "Вебинар начинается %d.%m.%Y в %k:%M"
