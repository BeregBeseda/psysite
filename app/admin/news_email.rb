ActiveAdmin.register NewsEmail do

  controller do
    def permitted_params
      params.permit news_email: [:active, :akey, :delivery_agree_date, :delivery_off_date, :email, :has_to_pay, :link, :name, :news_emails, :number_of_success_pays, :payed_sum, :pp_id, :title, :type, :use_for_news, :word]	  
    end
  end

end
