class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.datetime :cool_time1
      t.datetime :cool_time2
      t.string :pay_way
      t.string :promo
      t.datetime :when_payed
      t.integer :end_cards
      t.boolean :payed
    end
  end
end
