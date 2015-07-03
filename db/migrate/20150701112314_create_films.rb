class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :author
      t.time :duration
      t.integer :year_of_publishing
      t.string :main_image
      t.string :format
      t.string :lang
      t.decimal :price, limit: 5
      t.text :description
      t.string :screenshot1
      t.string :screenshot2
      t.string :screenshot3
      t.boolean :able, default: true      
    end
  end
end
