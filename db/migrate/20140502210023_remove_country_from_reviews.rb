class RemoveCountryFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :country, :string
  end
end
