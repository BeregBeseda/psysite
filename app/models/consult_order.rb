#!/bin/env ruby
# encoding: utf-8
class ConsultOrder < ActiveRecord::Base

  belongs_to :consult
  belongs_to :user  

end
