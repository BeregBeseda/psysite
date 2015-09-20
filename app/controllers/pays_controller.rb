class PaysController < ApplicationController

  def for_pay
    @consult = Consult.find(1)    
    @name = params[:name]
    @sum = params[:sum].to_s + '.0'        
  end

  def after_pay_form
    @id = params[:akey]
    @akey = params[:akey]
    unless (@order = Order.find(@id)) and (@order.akey == @akey)
      redirect_to menus_path
    end
  end

  def to_pay     
  end
  
  def success
  end  

  def pending
  end

  def fail
  end

end
