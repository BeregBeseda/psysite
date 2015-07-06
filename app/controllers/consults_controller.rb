# encoding: utf-8
class ConsultsController < ApplicationController

  before_action :set_post, only: [:show]

  def index
    @consults = Consult.all
  end
  
  def show
  end


  private

  def set_post
    @consult = Consult.find(params[:id])
  end

end
