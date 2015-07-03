ActiveAdmin.register BookOrder do

  controller do
    def permitted_params
      params.permit book_order: [:payed, :delivered, :price, :number_of_pay_fails, :pay_fails_datetimes, :book_id, :user_id]
    end
  end

end


