class ProductsController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @products = Product.all
  end

  def show
    I18n.locale = :ru
    @product = Product.find(params[:id])
    $product_id = @product.id
  end



  private

  def set_post
    @product = Product.find(params[:id])
  end

end
