class AddMuchToNewsEmail < ActiveRecord::Migration
  def change
    add_column :news_emails, :has_to_pay, :decimal
    add_column :news_emails, :link, :string
    add_column :news_emails, :pp_id, :integer
    add_column :news_emails, :type, :string
    add_column :news_emails, :title, :string
    add_column :news_emails, :number_of_success_pays, :integer, default: 0
    add_column :news_emails, :payed_sum, :decimal, default: 0
    remove_column :news_emails, :delivery_agree_date
    add_column :news_emails, :delivery_agree_date, :string, default: ''  
    remove_column :news_emails, :delivery_off_date       
    add_column :news_emails, :delivery_off_date, :string, default: ''    
  end
end
