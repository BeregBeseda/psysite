class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.string :name

      t.timestamps
    end
  end
end
