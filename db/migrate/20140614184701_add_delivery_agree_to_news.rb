class AddDeliveryAgreeToNews < ActiveRecord::Migration
  def change
    add_column :news_emails, :delivery_agree_date, :string
  end
end
