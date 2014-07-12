class AddDefaultValueToCommentVisible < ActiveRecord::Migration
  def change
    change_column :products_comments, :visible, :boolean, :default => true
    change_column :posts_comments, :visible, :boolean, :default => true
  end
end
