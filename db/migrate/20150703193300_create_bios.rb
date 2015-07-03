class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :title
      t.text :description
      t.string :main_image
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.string :photo5
      t.string :photo6
      t.string :photo7
      t.string :photo8      
      t.string :photo9
      t.string :email
      t.string :skype            
      t.string :vk_link                                          
      t.string :facebook_link      
      t.string :twitter_link      
      t.string :linkedin_link      
    end
  end
end
