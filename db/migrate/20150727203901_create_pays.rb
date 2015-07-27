class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|

      t.timestamps
    end
  end
end
