class OrdersController < ApplicationController

  before_action :set_post, only: [:show]

  def show
    @order = Order.find(params[:id])
  end

  def update
  end

  def confirm
  end

  def fail
  end

  #def order_params
  #  params.require(:order).permit(:type, :use_for_news, :name, :word, :akey)
  #end


  private

  def set_post
    @news_email = NewsEmail.find(params[:id])
  end

end
