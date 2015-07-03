class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year_of_publishing
      t.string :main_image
      t.integer :pages
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
