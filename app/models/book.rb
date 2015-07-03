#!/bin/env ruby
# encoding: utf-8
class Book < ActiveRecord::Base

  has_many :book_orders
  has_many :book_comments

end
