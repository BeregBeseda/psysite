class CreateNewsEmails < ActiveRecord::Migration
  def change
    create_table :news_emails do |t|
      t.string :email
      t.boolean :use_for_news

      t.timestamps
    end
  end
end
