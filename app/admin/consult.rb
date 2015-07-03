ActiveAdmin.register Consult do

  controller do
    def permitted_params
      params.permit consult: [:title, :price_per_30_mins, :min_deration, :description, :able]
    end
  end

end


