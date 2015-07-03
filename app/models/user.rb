#!/bin/env ruby
# encoding: utf-8
class User < ActiveRecord::Base

  has_many :book_orders
  has_many :book_comments
  
  has_many :consult_orders
  
  has_many :film_orders
  has_many :film_comments
  
  has_many :post_comments
  
  has_many :reviews

end
