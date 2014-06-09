class AddNameToNewsEmails < ActiveRecord::Migration
  def change
    add_column :news_emails, :name, :string
    add_column :mentions, :word, :string
    add_column :news_emails, :word, :string
    add_column :posts_comments, :word, :string
    add_column :products_comments, :word, :string
  end
end
