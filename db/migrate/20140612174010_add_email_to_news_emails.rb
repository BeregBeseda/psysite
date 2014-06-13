class AddEmailToNewsEmails < ActiveRecord::Migration
  def change
    add_column :news_emails, :email, :string
  end
end
