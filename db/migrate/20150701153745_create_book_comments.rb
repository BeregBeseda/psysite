class CreateBookComments < ActiveRecord::Migration
  def change
    create_table :book_comments do |t|
      t.text :comment
      t.boolean :able, default: true
    end
    add_reference :book_comments, :book, index: true
    add_reference :book_comments, :user, index: true        
  end
end
