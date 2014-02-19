class BuyersController < ApplicationController


  def create
    @buyer = Buyer.new(buyer_params)
    $addresser = @buyer

    if @buyer.save
      $addresser = nil
      redirect_to buyers_path(buyer_partial: 'layouts/buyers/success_created')
    else
      redirect_to product_path($product_id)
    end
  end


  def buyer_params
    params.require(:buyer).permit(:name)
  end


end
