# encoding: utf-8
class NewsEmail < ActiveRecord::Base

  has_many :orders

  #before_save { self.email = email.downcase }

  #validates :email, presence: { message: 'Введите свой E-mail' }
  #validates :name, presence: { message: 'Введите своё Имя' }
  #validates :word, presence: { message: "Введите число '#{$form_control_digit}' в последнее поле" }

  #validates :name, length: { minimum: 3, message: 'Минимальная длина Имени - 3 символов', if: :name? }
  #validates :name, length: { maximum: 61, message: 'Максимальная длина Имени - 60 символов' }

  #validates :email, length: { minimum: 5, message: 'Минимальная длина E-mail - 5 символов', if: :email? }
  #validates :email, length: { maximum: 51, message: 'Максимальная длина E-mail - 50 символов' }

  #validates :email, format: { with: /@/, message: 'Проверьте E-mail на правильность', if: :email? }
  #validates :word, format: { with: /[1234567890]/, message: "Введите число '#{$form_control_digit}' в последнее поле", if: :word? }

end
