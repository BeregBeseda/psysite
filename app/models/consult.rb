#!/bin/env ruby
# encoding: utf-8
class Consult < ActiveRecord::Base

  has_many :consult_orders

end
