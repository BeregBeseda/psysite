ActiveAdmin.register User do

  controller do
    def permitted_params
      params.permit user: [:name, :surname, :email, :password, :password_confirmation, :image, :subscribe, :birthday, :country, :city, :profession, :able, :site, :social_address, :vk, :facebook, :twitter, :linkedin, :hobby, :key_word, :akey, :number_of_activation_fails, :activation_fails_datetimes]
    end
  end

end



