class CreateProductsPays < ActiveRecord::Migration
  def change
    create_table :products_pays do |t|
      t.string :email
      t.string :product_name
      t.integer :sum
      t.string :account
      t.string :when

      t.timestamps
    end
  end
end
