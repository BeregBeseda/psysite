#!/bin/env ruby
# encoding: utf-8
class Example < ActiveRecord::Base
  validates :title, presence: { message: 'Поля "E-mail" и "Имя" обязательны к заполнению' }
end
