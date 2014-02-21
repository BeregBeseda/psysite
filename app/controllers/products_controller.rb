# encoding: utf-8
class ProductsController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @products = Product.all
  end

  def show
    I18n.locale = :ru
    @product = Product.find(params[:id])
    $product_id = @product.id
    $event_name = @product.name
    $top_field_text = 'Введите свой E-mail, чтобы оплатить запись семинара, и на Вашу почту придет вся необходимая информация для его скачивания:'
  end



  private

  def set_post
    @product = Product.find(params[:id])
  end

end
