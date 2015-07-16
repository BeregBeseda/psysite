# encoding: utf-8
class BiosController < ApplicationController

  before_action :set_post, only: [:show]
  
  def show
  end


  private

  def set_post
    @bio = Bio.find(1)
  end

end
