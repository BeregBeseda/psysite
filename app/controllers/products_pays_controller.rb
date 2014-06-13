# encoding: utf-8
class ProductsPaysController < ApplicationController

  def index
    @products_pay_email = params[:email]
    @products_pay_product_name = params[:product_name]
    $top_field_text = 'Заполните все поля, и, после проверки платежа, в течении суток, на Ваш E-mail придет ссылка на скачивание видеозаписи семинара'
  end

end
