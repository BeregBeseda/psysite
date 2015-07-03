class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review
      t.string :video_url      
      t.string :audio_url      
      t.boolean :able, default: true
    end
    add_reference :reviews, :user, index: true            
  end
end
