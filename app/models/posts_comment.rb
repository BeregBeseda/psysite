#!/bin/env ruby
# encoding: utf-8
class PostsComment < ActiveRecord::Base
  belongs_to :post

  validates :email, presence: { message: 'Email!' }

end
