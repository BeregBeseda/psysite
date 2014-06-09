class AddEmailUniquenessIndex < ActiveRecord::Migration
  def change
    add_index :news_emails, :email, :unique => true
  end
end
