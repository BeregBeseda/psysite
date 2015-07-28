class PaysController < ApplicationController

  def to_pay
    @sum = params[:sum].to_s + '.0'    
  end
  
  def success
  end  

  def pending
  end

  def fail
  end

end
