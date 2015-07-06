# encoding: utf-8
class FilmsController < ApplicationController

  before_action :set_post, only: [:show]

  def index
    @films = Film.all
  end
  
  def show
  end


  private

  def set_post
    @film = Film.find(params[:id])
  end

end
