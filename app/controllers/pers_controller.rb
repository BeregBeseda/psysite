# encoding: utf-8
class PersController < ApplicationController

  def index
    $redirect_news = 'pers'
    $top_field_text = 'Введите свой E-mail, чтобы оплатить консультацию и выбрать удобное время: '
  end

end
