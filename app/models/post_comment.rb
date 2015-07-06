#!/bin/env ruby
# encoding: utf-8
class PostComment < ActiveRecord::Base

  belongs_to :post
  belongs_to :user  

end
