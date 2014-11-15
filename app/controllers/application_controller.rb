class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :akey
  
  def akey
    key_int = 10.times.map{rand(1..99)}
    key_str = 10.times.map{('a'..'z').to_a[rand(26)]}
    key_int.concat(key_str)
    key_int.shuffle!
    key_int.join  
  end
  
end
