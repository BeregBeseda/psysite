ActiveAdmin.register Review do

  controller do
    def permitted_params
      params.permit review: [:review, :video_url, :audio_url, :able, :user_id]
    end
  end

end


