class CreatePostsComments < ActiveRecord::Migration
  def change
    create_table :posts_comments do |t|
      t.string :name
      t.string :surname
      t.string :soc_url
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
