class AddAkeyToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :akey, :string
  end
end
