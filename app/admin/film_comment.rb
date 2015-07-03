ActiveAdmin.register FilmComment do

  controller do
    def permitted_params
      params.permit film_comment: [:comment, :able, :film_id, :user_id]
    end
  end

end


