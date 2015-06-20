class DeviseCreateAdminUsers < ActiveRecord::Migration
  def migrate(direction)
    super
    # Create a new user1
    AdminUser.create!(:email => 'bereg.beseda@gmail.com', :password => 'password', :password_confirmation => 'password') if direction == :up
  end

  def change
    AdminUser.create!(:email => 'bereg.beseda@gmail.com', :password => 'password', :password_confirmation => 'password') if direction == :up
  end
end
