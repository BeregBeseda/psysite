ActiveAdmin.register Bio do

  controller do
    def permitted_params
      params.permit bio: [:title, :description, :main_image, :photo1, :photo2, :photo3, :photo4, :photo5, :photo6, :photo7, :photo8, :photo9, :email, :skype, :vk_link, :facebook_link, :twitter_link, :linkedin_link]
    end
  end

end

    
