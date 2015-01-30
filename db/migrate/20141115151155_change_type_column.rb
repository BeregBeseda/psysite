class ChangeTypeColumn < ActiveRecord::Migration
  def change
    remove_column :news_emails, :type
    remove_column :orders, :type
    add_column :news_emails, :typ, :string
    add_column :orders, :typ, :string
  end
end
