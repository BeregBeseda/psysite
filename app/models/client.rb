#!/bin/env ruby
# encoding: utf-8
class Client < ActiveRecord::Base

  @title='Почувствовать счастье'
  @keys='Умиротворение, доброжелательность, подавленность, психология, жить, покое, чувство пустоты, психолог, хочется любви, тепла, сигарета, утешение, полнота, энергия'
  @descr_head='Боль одиночества, внутренней пустоты и обиды мешает работать, верить в счастье, требует утешения едой, сигаретой. И хочется быть любимым, любить'

  @descr_body='Чувство подавленности, дискомфорта, заторможенности, пустоты, неудовлетворенности от пустых взаимоотношений. Хочется радости, безопасности, тепла'
  @h1='Психолог по Skype и E-mail - Хочется почувствовать радость, любовь, доброжелательность, тепло, стать счастливым'


  before_save { self.address = address.downcase }
  before_save { self.message = message.downcase }

  validates :address, presence: { message: 'Поле "E-mail" обязательно к заполнению' }
  validates :message, presence: { message: 'Поле "Skype" обязательно к заполнению' }
  validates :name, presence: { message: 'Поле "Имя" обязательно к заполнению' }

  validates :address, length: { minimum: 5, message: 'Минимальная длина "E-mail" - 5 символов', if: :address? }
  validates :address, length: { maximum: 61, message: 'Максимальная длина "E-mail" - 60 символов' }

  validates :message, length: { minimum: 5, message: 'Минимальная длина "Skype" - 5 символов', if: :message? }
  validates :message, length: { maximum: 51, message: 'Максимальная длина "Skype" - 50 символов' }

  validates :name, length: { minimum: 2, message: 'Минимальная длина Имени - 2 символа', if: :name? }
  validates :name, length: { maximum: 51, message: 'Максимальная длина Имени - 50 символов' }

  validates_format_of :address, with: /@/, message: 'Проверьте "E-mail" на правильность', if: :address?


end
