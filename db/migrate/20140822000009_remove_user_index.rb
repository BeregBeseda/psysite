class RemoveUserIndex < ActiveRecord::Migration
  def change
    remove_column :users, :email, :index
  end
end
