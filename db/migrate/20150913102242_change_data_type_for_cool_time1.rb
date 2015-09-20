class ChangeDataTypeForCoolTime1 < ActiveRecord::Migration
  def change
    change_column :orders, :cool_time1, :string
  end
end
