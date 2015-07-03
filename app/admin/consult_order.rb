ActiveAdmin.register ConsultOrder do

  controller do
    def permitted_params
      params.permit consult_order: [:payed, :delivered, :price, :datetime1, :datetime2, :number_of_pay_fails, :pay_fails_datetimes, :consult_id, :user_id]
    end
  end

end



