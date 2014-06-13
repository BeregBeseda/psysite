# encoding: utf-8
class NewsEmail < ActiveRecord::Base

  before_save { self.email = email.downcase }

  validates :email, presence: { message: 'Введите свой E-mail' }
  validates :name, presence: { message: 'Введите своё Имя' }
  validates :word, presence: { message: 'Введите число "8" в последнее поле' }

  validates :name, length: { minimum: 5, message: 'Минимальная длина Имени - 5 символов', if: :name? }
  validates :name, length: { maximum: 61, message: 'Максимальная длина Имени - 60 символов' }

  validates :email, format: { with: /@/, message: 'Проверьте E-mail на правильность', if: :email? }
  validates :word, format: { with: /8/, message: 'Введите число "8" в последнее поле', if: :word? }

end
