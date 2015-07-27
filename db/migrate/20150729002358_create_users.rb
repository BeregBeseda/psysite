class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :image
      t.boolean :subscribe
      t.datetime :birthday
      t.string :country
      t.string :city
      t.string :profession
      t.boolean :able, default: true
      t.string :site
      t.string :social_address
      t.string :vk
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.text :hobby
      t.string :key_word
      t.string :akey    
      t.integer :number_of_activation_fails, default: 0 
      t.string :activation_fails_datetimes, default: ''      
    end
  end
end
