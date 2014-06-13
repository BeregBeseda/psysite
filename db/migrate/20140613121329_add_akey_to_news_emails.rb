class AddAkeyToNewsEmails < ActiveRecord::Migration
  def change
    add_column :news_emails, :akey, :string
  end
end
