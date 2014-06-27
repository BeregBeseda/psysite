class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   "name"
      t.datetime "date"
      t.integer  "price",       limit: 5
      t.string   "image"
      t.string   "social_link"
      t.text     "description"
      t.string     "short"

      t.timestamps
    end
  end
end
