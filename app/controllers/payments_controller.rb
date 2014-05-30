class PaymentsController < ApplicationController

  def index
    @pay_instr_end_from_url = params[:end]
  end


end
