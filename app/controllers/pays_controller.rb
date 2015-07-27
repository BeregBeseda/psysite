class PaysController < ApplicationController

  def success
    @sum = params[:sum].to_s + '.0'    
  end

  def fail
  end

end
