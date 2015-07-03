class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.text :comment
      t.boolean :able, default: true
    end
    add_reference :post_comments, :post, index: true
    add_reference :post_comments, :user, index: true        
  end
end
