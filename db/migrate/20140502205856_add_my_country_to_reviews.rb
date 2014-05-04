class AddMyCountryToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :my_country, :string
  end
end
