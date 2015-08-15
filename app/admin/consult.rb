ActiveAdmin.register Consult do

  controller do
    def permitted_params
      params.permit consult: [:title, :description, :price, :link_for_pay_from_ukr_card, :at_last_price_installed_at, :at_last_link_for_pay_from_ukr_card_installed_at, :ukr_pay_link_without_price, :able]
    end
  end

end


