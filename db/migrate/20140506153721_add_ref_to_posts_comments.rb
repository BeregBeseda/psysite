class AddRefToPostsComments < ActiveRecord::Migration
  def change
    add_reference :posts_comments, :post, index: true
  end
end
