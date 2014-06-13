class RemoveEmailIndexFromNewsEmails < ActiveRecord::Migration
  def change
    remove_column :news_emails, :email, :index
  end
end
