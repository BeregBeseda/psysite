#!/bin/env ruby
# encoding: utf-8
class Film < ActiveRecord::Base

  has_many :film_orders
  has_many :film_comments

end
