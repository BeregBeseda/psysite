class NewsEmail < ActiveRecord::Base

  before_save { self.email = email.downcase }

end
