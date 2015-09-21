class PaysController < ApplicationController

  def for_pay
    @consult = Consult.find(1)    
    #@name = URI.decode(params[:name])
    #@sum = params[:sum].to_s + '.0'        
  end

  def after_pay_form
    @name = params[:name]
    @id = params[:id]
    @akey = params[:akey]
    if Order.where(id: @id).empty? or Order.find(@id).akey != @akey
      redirect_to '/'
    else
      @order = Order.find(@id)
    end  
  end

  def success_confirm_form
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
