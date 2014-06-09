#!/bin/env ruby
# encoding: utf-8
class ProductsComment < ActiveRecord::Base

  belongs_to :product

  before_save { self.email = email.downcase }

  validates :name, presence: { message: 'Введите свое имя' }
  validates :surname, presence: { message: 'Введите свою фамилию' }
  validates :email, presence: { message: 'Введите свой E-mail' }
  validates :comment, presence: { message: 'Введите комментарий' }


  validates :name, length: { minimum: 5, message: 'Минимальная длина Имени - 5 символов', if: :name? }
  validates :name, length: { maximum: 61, message: 'Максимальная длина Имени - 60 символов' }

  validates :surname, length: { minimum: 5, message: 'Минимальная длина Фамилии - 5 символов', if: :surname? }
  validates :surname, length: { maximum: 61, message: 'Максимальная длина Фамилии - 60 символов' }

  validates :email, length: { minimum: 5, message: 'Минимальная длина E-mail - 5 символов', if: :email? }
  validates :email, length: { maximum: 51, message: 'Максимальная длина E-mail - 50 символов' }

  validates :comment, length: { minimum: 2, message: 'Минимальная длина Комментария - 2 символа', if: :comment? }
  validates :comment, length: { maximum: 3000, message: 'Максимальная длина Комментария - 3000 символов' }


  validates_format_of :email, with: /@/, message: 'Проверьте E-mail на правильность', if: :email?
  validates_format_of :word, with: /8/, message: 'Введите число "8" в последнее поле'

end
