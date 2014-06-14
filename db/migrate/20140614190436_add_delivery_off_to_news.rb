class AddDeliveryOffToNews < ActiveRecord::Migration
  def change
    add_column :news_emails, :delivery_off_date, :string
  end
end
