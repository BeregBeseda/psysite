# encoding: utf-8
class ProductsPaysController < ApplicationController

  def index
    @product = Product.find_by_id(params[:product_id])
    @user = NewsEmail.find_by_id(params[:user_id])
    $top_field_text = 'Заполните все поля, и, после проверки платежа, в течении суток, на Ваш E-mail придет ссылка на скачивание видеозаписи семинара'
  end

  def fail
  end

end
