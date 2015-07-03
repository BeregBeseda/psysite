#!/bin/env ruby
# encoding: utf-8
class FilmComment < ActiveRecord::Base

  belongs_to :film
  belongs_to :user  

end
