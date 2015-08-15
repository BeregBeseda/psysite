class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.string :title
      t.text :description
      t.decimal :price, limit: 5
      t.string :link_for_pay_from_ukr_card
      t.date :at_last_price_installed_at            
      t.date :at_last_link_for_pay_from_ukr_card_installed_at      
      t.string :ukr_pay_link_without_price      
      t.boolean :able
    end
  end
end
