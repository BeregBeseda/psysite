ActiveAdmin.register NewsEmail do

  controller do
    def permitted_params
      params.permit news_email: [:email, :use_for_news]
    end
  end

end