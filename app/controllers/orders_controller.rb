# encoding: utf-8
#!/usr/bin/ruby
require "uri"
require "net/http"

class OrdersController < ApplicationController
  
    
  def create
    @order = Order.new(order_params)
    @order.sum_for_pay = Consult.find(1).price
    @order.akey = akey
    @order.akey_payed = akey
    #@order.name = @order.name.slice(0,1).capitalize + @order.name.slice(1,-1)
    @order.name[0] = @order.name[0].capitalize
    @order.email.downcase!
    if @order.save      
      OrderMailer.confirm_pay(@order).deliver
      # СРАЗУ ПЕРЕНАПРАВЛЯТЬ НА СТРАНИЦУ ОПЛАТЫ
      #params = {'ik_x_name' => 'hello', 'ik_am' => '3.0', 'ik_co_id' => '52ebcda5bf4efcf93108363c', 'ik_pm_no' => 'ID_001', 'ik_cur' => 'UAH', 'ik_desc' => 'PayWays', 'ik_suc_u' => 'http://psysite.herokuapp.com/success_pay/', 'ik_suc_m' => 'post', 'ik_fal_u' => 'http://psysite.herokuapp.com/fail_pay/', 'ik_fal_m' => 'post', 'ik_pnd_u' => 'http://psysite.herokuapp.com/pending_pay/', 'ik_exp' => '2015-08-10'}
      #x = Net::HTTP.post_form(URI.parse('https://sci.interkassa.com/'), params)
      #redirect_to x.body      
      # puts x.body   
      
      #@url_name = URI.encode(@order.name)
      #redirect_to "/for_pay_click/#{@url_name}/#{@order.sum_for_pay.to_i}"
      redirect_to "/for_pay_click"          
    else
      #redirect_to "cases/#{}"    
      redirect_to '/'
    end  
  end
  
  def update
    @order = Order.find(params[:id])
    @order.update_attributes(order_params)
    if @order.save
      flash[:notice] = 'В течении суток на Вашу почту придет письмо с подтверждением консультации'
      OrderMailer.confirm_info_for_psyc(@order).deliver
      redirect_to '/success_confirm'	
    else
      redirect_to '/'       
      #@url_name = URI.encode(@order.name)
      #@form_url = "/confirm_form/#{@url_name}/#{@order.akey}/#{@order.id}"         
      #redirect_to "@form_url"
    end
  end
  
  def order_is_payed
    @akey = params[:akey]
    @id = params[:id]
    @akey_payed = params[:akey_payed]  
    if Order.where(id: @id).empty? or Order.find(@id).akey != @akey or Order.find(@id).akey_payed != @akey_payed
      flash[:notice] = 'Неправильные данные. Обратитесь к администратору сайта'
    else
      @order = Order.find(@id)
      @order.payed = 'true'
      @order.akey_payed = ''
      if @order.save
        flash[:notice] = 'Заказ сохранен со статусом << оплачено >>'
      else
        flash[:notice] = 'Ошибка. Пожалуйста, перейдите по данной ссылке еще раз'
      end  
    end       
  end


  
  def order_params
    params.require(:order).permit(:akey, :akey_payed, :name, :email, :cool_time1, :cool_time2, :pay_way, :promo, :when_payed, :end_cards, :payed)
  end
  
end
