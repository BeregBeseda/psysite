ActiveAdmin.register Order do

  controller do
    def permitted_params
      params.permit order: [:name, :email, :cool_time1, :cool_time2, :pay_way, :promo, :when_payed, :end_cards, :payed]
    end
  end

end

