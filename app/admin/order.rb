ActiveAdmin.register Order do


  controller do
    def permitted_params
      params.permit order: [:typ, :done, :title, :has_to_pay, :sum, :account, :when_payed, :want_datetime, :now_time, :new_email_id, :akey, :fail_datetime, :link, :number_of_fails, :product_id, :news_email_name, :news_email_email, :active]
    end
  end
  
end
