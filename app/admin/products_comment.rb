ActiveAdmin.register ProductsComment do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  controller do
    def permitted_params
      params.permit products_comment: [:name, :surname, :soc_url, :email, :comment, :product_id, :word, :visible]
    end
  end

end
