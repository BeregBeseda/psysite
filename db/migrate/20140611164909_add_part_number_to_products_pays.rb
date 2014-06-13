class AddPartNumberToProductsPays < ActiveRecord::Migration
  def change
    add_column :products_pays, :number, :string
    add_column :pers_pays, :number, :string
  end
end
