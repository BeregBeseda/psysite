# encoding: utf-8
class PersController < ApplicationController

  def index
    $redirect_news = 'pers'
    $pay_instr_end_first = 'после оплаты на карточку, отправьте на E-mail способ оплаты, последние 4 цифры Вашей кредитной карты, сумму, время оплаты и желаемое время консультации в Skype'
    $pay_instr_end1 = 'на E-mail высылаете этот код, выбранный способ оплаты, время оплаты, сумму и желаемое время консультации в Skype'
    $pay_instr_end2 = 'в течении 3-х часов на Ваш E-mail придет подтверждение встречи'
    $top_field_text = 'Введите свой E-mail, чтобы оплатить консультацию и выбрать удобное время: '
  end

end
