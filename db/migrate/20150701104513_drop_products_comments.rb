class DropProductsComments < ActiveRecord::Migration
  def change
    drop_table :products_comments
  end
end
