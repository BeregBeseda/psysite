#!/bin/env ruby
# encoding: utf-8
class BookOrder < ActiveRecord::Base

  belongs_to :book
  belongs_to :user  

end
