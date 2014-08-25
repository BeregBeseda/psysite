class DropProductsGets < ActiveRecord::Migration
  def change
    drop_table :products_gets
  end
end