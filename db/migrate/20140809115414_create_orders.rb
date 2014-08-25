class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :type
      t.boolean :done
      t.string :title
      t.integer :has_to_pay
      t.integer :sum
      t.string :account
      t.datetime :when_payed
      t.string :want_datetime
      t.string :now_time
      t.integer :new_email_id

      t.timestamps
    end
  end
end
