# encoding: utf-8
#!/usr/bin/ruby

require "uri"
require "net/http"

class OrdersController < ApplicationController
  
    
  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:notice] = 'order saved cool'
      #params = {'ik_x_name' => 'hello', 'ik_am' => '3.0', 'ik_co_id' => '52ebcda5bf4efcf93108363c', 'ik_pm_no' => 'ID_001', 'ik_cur' => 'UAH', 'ik_desc' => 'PayWays', 'ik_suc_u' => 'http://psysite.herokuapp.com/success_pay/', 'ik_suc_m' => 'post', 'ik_fal_u' => 'http://psysite.herokuapp.com/fail_pay/', 'ik_fal_m' => 'post', 'ik_pnd_u' => 'http://psysite.herokuapp.com/pending_pay/', 'ik_exp' => '2015-08-10'}
      #x = Net::HTTP.post_form(URI.parse('https://sci.interkassa.com/'), params)
      #redirect_to x.body      
      #puts x.body      
    else
      flash[:notice] = 'order NOt saved cool'
    end  
  end
  


  
  def order_params
    params.require(:order).permit(:name, :email, :cool_time1, :cool_time2, :pay_way, :promo, :when_payed, :end_cards, :payed)
  end
  
end
