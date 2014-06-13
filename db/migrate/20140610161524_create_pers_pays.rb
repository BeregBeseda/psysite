class CreatePersPays < ActiveRecord::Migration
  def change
    create_table :pers_pays do |t|
      t.string :email
      t.integer :sum
      t.string :account
      t.string :when

      t.timestamps
    end
  end
end
