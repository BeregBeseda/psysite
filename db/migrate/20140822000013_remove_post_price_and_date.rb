class RemovePostPriceAndDate < ActiveRecord::Migration
  def change   		
    remove_column :posts, :price
    remove_column :posts, :date
  end
end
