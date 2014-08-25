class DropProductsPays < ActiveRecord::Migration
  def change
    drop_table :products_pays
  end
end