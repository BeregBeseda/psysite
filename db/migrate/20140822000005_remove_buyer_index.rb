class RemoveBuyerIndex < ActiveRecord::Migration
  def change
    remove_column :buyers, :email, :index
  end
end
