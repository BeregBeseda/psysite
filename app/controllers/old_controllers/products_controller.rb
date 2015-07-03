# encoding: utf-8
class ProductsController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @products = Product.all
  end

  def show
    if $form_control_digit == nil
      $form_control_digit = rand(1..9)
    end
    I18n.locale = :ru
    #@product = Product.find(params[:id])
    flash[:notise] = 'и я буду присылать Вам свежие, а также любимые читателями статьи и видео семинары'
  end



  private

  def set_post
    @product = Product.find(params[:id])
  end

end
