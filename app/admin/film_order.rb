ActiveAdmin.register FilmOrder do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  controller do
    def permitted_params
      params.permit film_order: [:payed, :delivered, :price, :number_of_pay_fails, :pay_fails_datetimes, :film_id, :user_id]
    end
  end

end


