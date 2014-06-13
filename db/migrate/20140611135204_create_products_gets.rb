class CreateProductsGets < ActiveRecord::Migration
  def change
    create_table :products_gets do |t|
      t.string :email
      t.string :product_name
      t.string :link_of_product

      t.timestamps
    end
  end
end
