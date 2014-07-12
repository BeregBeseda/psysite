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
    @product = Product.find(params[:id])
    $now_post_product = @product
    $redirect_news = 'products'
    $product_id = @product.id
    $event_name = @product.name
    $pay_instr_end_first = 'после оплаты на карточку, отправьте на E-mail способ оплаты, последние 4 цифры Вашей кредитной карты, сумму, время оплаты и название семинара'
    $pay_instr_end1 = 'на E-mail высылаете этот код, выбранный способ оплаты, сумму, время оплаты и название семинара'
    $pay_instr_end2 = 'в течении суток на Ваш E-mail придет ссылка на скачивание семинара'
    $top_field_text = 'Введите свой E-mail, чтобы оплатить запись семинара, и на Вашу почту придет вся необходимая информация для его скачивания:'
  end



  private

  def set_post
    @product = Product.find(params[:id])
  end

end
