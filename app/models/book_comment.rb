#!/bin/env ruby
# encoding: utf-8
class BookComment < ActiveRecord::Base

  belongs_to :book
  belongs_to :user  

end
