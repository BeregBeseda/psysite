class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :surname
      t.string :country
      t.string :city
      t.integer :age
      t.string :profession
      t.text :review
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
