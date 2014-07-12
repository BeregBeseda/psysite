class AddVisibleToComments < ActiveRecord::Migration
  def change
    add_column :products_comments, :visible, :boolean
    add_column :posts_comments, :visible, :boolean
  end
end
