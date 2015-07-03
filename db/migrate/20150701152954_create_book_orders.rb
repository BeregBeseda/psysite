class CreateBookOrders < ActiveRecord::Migration
  def change
    create_table :book_orders do |t|
      t.boolean :payed
      t.boolean :delivered     
      t.decimal :price, limit: 5      
      t.integer :number_of_pay_fails, default: 0
      t.string :pay_fails_datetimes, default: ''                        
    end
    add_reference :book_orders, :book, index: true        
    add_reference :book_orders, :user, index: true        
  end
end
