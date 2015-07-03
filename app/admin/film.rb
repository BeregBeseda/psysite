ActiveAdmin.register Film do

  controller do
    def permitted_params
      params.permit film: [:title, :author, :duration, :year_of_publishing, :main_image, :format, :lang, :price, :description, :screenshot1, :screenshot2, :screenshot3, :able]
    end
  end

end

