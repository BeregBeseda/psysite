class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string   "email"
      t.string   "name"
      t.string   "akey"

      t.timestamps
    end
  end
end
