ActiveAdmin.register Book do

  controller do
    def permitted_params
      params.permit book: [:title, :author, :year_of_publishing, :main_image, :pages, :format, :lang, :price, :description, :screenshot1, :screenshot2, :screenshot3, :able]
    end
  end

end


