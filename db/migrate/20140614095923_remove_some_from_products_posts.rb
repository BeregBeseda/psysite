class RemoveSomeFromProductsPosts < ActiveRecord::Migration
  def change
    remove_column :products, :short, :string
    remove_column :posts, :short, :string
  end
end
