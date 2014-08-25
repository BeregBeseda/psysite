class DropExample1s < ActiveRecord::Migration
  def change
    drop_table :example1s
  end
end