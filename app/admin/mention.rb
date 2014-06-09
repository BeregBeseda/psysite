ActiveAdmin.register Mention do

  controller do
    def permitted_params
      params.permit mention: [:name,:surname, :place, :nation, :age, :profession, :mention, :video_url, :audio_url, :online_address, :site, :img_url, :visible, :word]
    end
  end

end