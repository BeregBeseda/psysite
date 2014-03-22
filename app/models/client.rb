#!/bin/env ruby
# encoding: utf-8
class Client < ActiveRecord::Base

  @title='Почувствовать счастье'
  @keys='Умиротворение, доброжелательность, подавленность, психология, жить, покое, чувство пустоты, психолог, хочется любви, тепла, сигарета, утешение, полнота, энергия'
  @descr_head='Боль одиночества, внутренней пустоты и обиды мешает работать, верить в счастье, требует утешения едой, сигаретой. И хочется быть любимым, любить'

  @descr_body='Чувство подавленности, дискомфорта, заторможенности, пустоты, неудовлетворенности от пустых взаимоотношений. Хочется радости, безопасности, тепла'
  @h1='Психолог по Skype и E-mail - Хочется почувствовать радость, любовь, доброжелательность, тепло, стать счастливым'


  before_save { self.address = address.downcase }

  validates :address, presence: { message: 'Поле "Skype или E-mail" обязательно к заполнению' }
  validates :name, presence: { message: 'Поле "Имя" обязательно к заполнению' }

  validates :address, length: { minimum: 3, message: 'Минимальная длина поля "Skype или E-mail" - 3 символа' }
  validates :address, length: { maximum: 61, message: 'Максимальная длина поля "Skype или E-mail" - 60 символов' }

  validates :name, length: { minimum: 2, message: 'Минимальная длина Имени - 2 символа' }
  validates :name, length: { maximum: 51, message: 'Максимальная длина Имени - 50 символов' }

  validates :message, length: { maximum: 1001, message: 'Максимальная длина сообщения - 1000 символов' }


end
