class DropNewsEmails < ActiveRecord::Migration
  def change
    drop_table :news_emails  
  end
end
