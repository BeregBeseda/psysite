class AddDefaultValueToNewsEmails < ActiveRecord::Migration
  def change
    change_column :news_emails, :use_for_news, :boolean, :default => true
  end
end
