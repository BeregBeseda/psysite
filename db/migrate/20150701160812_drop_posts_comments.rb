class DropPostsComments < ActiveRecord::Migration
  def change
    drop_table :posts_comments  
  end
end
