ActiveAdmin.register BookComment do

  controller do
    def permitted_params
      params.permit BookComment: [:comment, :able, :book_id, :user_id]
    end
  end

end


