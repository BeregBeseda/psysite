class AddAkeyPayedToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :akey_payed, :string
  end
end
