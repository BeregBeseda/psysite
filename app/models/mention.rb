# encoding: utf-8
class Mention < ActiveRecord::Base

  before_save { self.visible = true }

  validates :name, presence: { message: 'Введите свое имя' }
  validates :surname, presence: { message: 'Введите свою фамилию' }
  validates :nation, presence: { message: 'Введите свою страну' }
  validates :place, presence: { message: 'Введите свой город' }
  validates :age, presence: { message: 'Введите свой возраст' }
  validates :online_address, presence: { message: 'Введите свой возраст' }
  validates :profession, presence: { message: 'Введите свой возраст' }
  validates :mention, presence: { message: 'Введите свой возраст', unless: :video_url? }
  validates :video_url, presence: { message: 'Введите свой E-mail', unless: :mention? }
  validates :word, presence: { message: 'Введите число "8" в последнее поле' }



  validates :name, length: { minimum: 3, message: 'Минимальная длина Имени - 5 символов', if: :name? }
  validates :name, length: { maximum: 61, message: 'Максимальная длина Имени - 60 символов' }

  validates :surname, length: { minimum: 3, message: 'Минимальная длина Фамилии - 5 символов', if: :surname? }
  validates :surname, length: { maximum: 61, message: 'Максимальная длина Фамилии - 60 символов' }

  validates :nation, length: { minimum: 3, message: 'Минимальная длина E-mail - 5 символов', if: :nation? }
  validates :nation, length: { maximum: 51, message: 'Максимальная длина E-mail - 50 символов' }

  validates :place, length: { minimum: 3, message: 'Минимальная длина E-mail - 5 символов', if: :place? }
  validates :place, length: { maximum: 51, message: 'Максимальная длина E-mail - 50 символов' }

  validates :age, length: { minimum: 2, message: 'Минимальная длина E-mail - 5 символов', if: :age? }
  validates :age, length: { maximum: 2, message: 'Максимальная длина E-mail - 50 символов' }

  validates :online_address, length: { minimum: 5, message: 'Минимальная длина E-mail - 5 символов', if: :online_address? }
  validates :online_address, length: { maximum: 500, message: 'Максимальная длина E-mail - 50 символов' }

  validates :profession, length: { minimum: 3, message: 'Минимальная длина E-mail - 5 символов', if: :profession? }
  validates :profession, length: { maximum: 100, message: 'Максимальная длина E-mail - 50 символов' }

  validates :mention, length: { minimum: 5, message: 'Минимальная длина E-mail - 5 символов', if: :mention? }
  validates :mention, length: { maximum: 3000, message: 'Максимальная длина E-mail - 50 символов' }

  validates :video_url, length: { minimum: 5, message: 'Минимальная длина E-mail - 5 символов', if: :video_url? }
  validates :video_url, length: { maximum: 1000, message: 'Максимальная длина E-mail - 50 символов' }

  validates :audio_url, length: { maximum: 1000, message: 'Максимальная длина E-mail - 50 символов' }

  validates :site, length: { maximum: 1000, message: 'Максимальная длина E-mail - 50 символов' }

  validates :img_url, length: { maximum: 1000, message: 'Максимальная длина Комментария - 3000 символов' }


  validates :word, format: { with: /8/, message: 'Введите число "8" в последнее поле', if: :word? }

end
