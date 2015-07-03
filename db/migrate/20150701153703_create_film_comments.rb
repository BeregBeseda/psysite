class CreateFilmComments < ActiveRecord::Migration
  def change
    create_table :film_comments do |t|
      t.text :comment
      t.boolean :able, default: true
    end
    add_reference :film_comments, :film, index: true    
    add_reference :film_comments, :user, index: true        
  end
end
