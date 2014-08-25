class AddVisibleToSome < ActiveRecord::Migration
  def change
	add_column :products, :visible, :boolean, default: true
	add_column :posts, :visible, :boolean, default: true
	add_column :news_emails, :active, :boolean, default: true
	add_column :orders, :active, :boolean, default: true
  end
end	
