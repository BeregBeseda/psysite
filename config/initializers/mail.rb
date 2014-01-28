
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :port           => '465',
  :authentication => :plain,
  :user_name      => 'bereg.beseda@gmail.com',
  :password       => 'sh19781968199719gmail',
  :domain         => 'mail.google.com',
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp
