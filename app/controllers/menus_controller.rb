class MenusController < ApplicationController

  before_action :set_post, only: [:show]



  def index
    @menus = Menu.all
  end

  def show
    #@menu = Menu.find(params[:id])
    #$menu = Menu.find(params[:id])
    #$menu_id = @menu.id
    @consult = Consult.find(1)
    @order = Order.new
    @bio = Bio.find(1)
  end



  private


  def set_post
    @menu = Menu.find(params[:id])
  end

end
