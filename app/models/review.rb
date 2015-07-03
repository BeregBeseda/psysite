#!/bin/env ruby
# encoding: utf-8
class Review < ActiveRecord::Base

  belongs_to :user

end
