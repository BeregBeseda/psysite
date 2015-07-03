class CreateConsultOrders < ActiveRecord::Migration
  def change
    create_table :consult_orders do |t|
      t.boolean :payed
      t.boolean :delivered     
      t.decimal :price, limit: 5      
      t.datetime :datetime1
      t.datetime :datetime2
      t.integer :duration
      t.integer :number_of_pay_fails, default: 0
      t.string :pay_fails_datetimes, default: ''            
    end
    add_reference :consult_orders, :consult, index: true    
    add_reference :consult_orders, :user, index: true        
  end
end
