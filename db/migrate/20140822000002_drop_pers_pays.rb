class DropPersPays < ActiveRecord::Migration
  def change
    drop_table :pers_pays
  end
end