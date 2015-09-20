class AddToOrdersSumForPayColumn < ActiveRecord::Migration
  def change
    add_column :orders, :sum_for_pay, :decimal
  end
end
