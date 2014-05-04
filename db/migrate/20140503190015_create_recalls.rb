class CreateRecalls < ActiveRecord::Migration
  def change
    create_table :recalls do |t|
      t.string :name
      t.string :surname
      t.string :my_city
      t.string :my_country
      t.integer :age
      t.string :profession
      t.string :recall
      t.string :video_url
      t.string :audio_url
      t.string :online_address
      t.string :site
      t.string :img_url
      t.boolean :visible

      t.timestamps
    end
  end
end
