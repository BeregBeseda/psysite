class AddMuchToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :akey, :string    
    add_column :orders, :fail_datetime, :string, default: ''    	
    add_column :orders, :link, :string
		add_column :orders, :number_of_fails, :integer, default: 0
    add_column :orders, :product_id, :integer
    add_column :orders, :news_email_name, :string
    add_column :orders, :news_email_email, :string
    remove_column :orders, :want_datetime
    add_column :orders, :want_datetime, :datetime
    remove_column :orders, :now_time
    add_column :orders, :now_time, :time
    remove_column :orders, :sum
    add_column :orders, :sum, :decimal    		
    remove_column :orders, :has_to_pay
    add_column :orders, :has_to_pay, :decimal    
  end
end
