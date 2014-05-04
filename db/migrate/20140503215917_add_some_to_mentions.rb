class AddSomeToMentions < ActiveRecord::Migration
  def change
    add_column :mentions, :surname, :string
    add_column :mentions, :place, :string
    add_column :mentions, :nation, :string
    add_column :mentions, :age, :integer
    add_column :mentions, :profession, :string
    add_column :mentions, :mention, :text
    add_column :mentions, :video_url, :string
    add_column :mentions, :audio_url, :string
    add_column :mentions, :online_address, :string
    add_column :mentions, :site, :string
    add_column :mentions, :img_url, :string
    add_column :mentions, :visible, :boolean
  end
end
