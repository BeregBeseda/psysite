class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.string :title
      t.decimal :price_per_30_mins,limit: 5
      t.integer :min_deration
      t.text :description
      t.boolean :able, default: true      
    end
  end
end
