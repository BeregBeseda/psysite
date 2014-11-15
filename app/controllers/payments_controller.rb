class PaymentsController < ApplicationController

  def index
    @pay_instr_end_from_url = params[:end]
    @sum = params[:sum]
    @sum = @sum.round(2)
  end


end
