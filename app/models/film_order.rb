#!/bin/env ruby
# encoding: utf-8
class FilmOrder < ActiveRecord::Base
  
  belongs_to :film
  belongs_to :user
  
end
