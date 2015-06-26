ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "psysite.herokuapp.com",  
  :user_name            => "bereg.beseda",  
  :password             => "gsh1978196819971",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  

ActionMailer::Base.default_url_options = { :host => 'psysite.herokuapp.com' }
