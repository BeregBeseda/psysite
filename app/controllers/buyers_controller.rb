class BuyersController < ApplicationController


  def create
    @buyer = Buyer.new(buyer_params)
    $addresser = @buyer

    key_int = 10.times.map{rand(1..99)}
    key_str = 10.times.map{('a'..'z').to_a[rand(26)]}
    key_int.concat(key_str)
    key_int.shuffle!
    @buyer.akey = key_int.join

    if @buyer.save
      $addresser = nil
      BuyerMailer.buyer_welcome_email(@buyer).deliver
      redirect_to buyers_path(buyer_partial: 'layouts/buyers/success_created')
    else
      redirect_to product_path($product_id)
    end
  end


  def buyer_params
    params.require(:buyer).permit(:email, :name)
  end


  def update
    @buyer = Buyer.find(:first, conditions: { akey: params[:akey]} )
    @buyer.akey = nil

    if @buyer.save
      redirect_to buyers_path(buyer_partial: 'layouts/buyers/instruction_pay_link')
    else
      redirect_to products_path
    end
  end


end
