class CreateDifferents < ActiveRecord::Migration
  def change
    create_table :differents do |t|     
      t.integer :consult_price
	  t.text :about_psychologists

      t.timestamps
    end
  end
end
