# encoding: utf-8
class PersController < ApplicationController

  def index
    if $form_control_digit == nil
      $form_control_digit = rand(1..9)
    end
    flash[:notise] = 'Введите свой E-mail, чтобы оплатить консультацию и выбрать удобное время: '
  end

end
