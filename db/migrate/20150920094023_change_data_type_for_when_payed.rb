class ChangeDataTypeForWhenPayed < ActiveRecord::Migration
  def change
    change_column :orders, :when_payed, :string
  end
end
