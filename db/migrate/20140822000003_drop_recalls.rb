class DropRecalls < ActiveRecord::Migration
  def change
    drop_table :recalls
  end
end