class MenusController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @menus = Menu.all
  end

  def show
    #@menu = Menu.find(params[:id])
    #$menu = Menu.find(params[:id])
    #$menu_id = @menu.id
  end

  def about_me
  end




  private


  def set_post
    @menu = Menu.find(params[:id])
  end

end
