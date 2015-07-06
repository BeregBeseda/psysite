ActiveAdmin.register BookComment do

  controller do
    def permitted_params
      params.permit book_comment: [:comment, :able, :book_id, :user_id]
    end
  end

end


