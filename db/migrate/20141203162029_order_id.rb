class OrderId < ActiveRecord::Migration
  def change
    add_column :orders, :news_email_id, :integer
  end
end
