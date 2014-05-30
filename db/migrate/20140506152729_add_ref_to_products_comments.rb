class AddRefToProductsComments < ActiveRecord::Migration
  def change
    add_reference :products_comments, :product, index: true
  end
end
