# encoding: utf-8
class BiosController < ApplicationController

  before_action :set_post, only: [:show]

  def index
    @bios = Bio.all
  end
  
  def show
  end


  private

  def set_post
    @bio = Bio.find(params[:id])
  end

end
