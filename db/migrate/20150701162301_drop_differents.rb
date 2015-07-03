class DropDifferents < ActiveRecord::Migration
  def change
    drop_table :differents  
  end
end
