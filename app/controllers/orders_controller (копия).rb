class OrdersController < ApplicationController
  
  before_action :set_post, only: [:show, :confirm, :fail]

  def show
    #@order = Order.find(params[:id])
  end

  def update
    @order = Order.new(order_create_params)
    @news_email = NewsEmail.find(:first, conditions: { id: @order.new_email_id} ) 

		unless @news_email.active or @order.active 
			@news_email = nil
			redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
		end
		@order_valid = true
		flash[:sum] = nil
		flash[:account] = nil
		flash[:when_payed] = nil
		flash[:want_datetime] = nil
		flash[:now_time] = nil
		
		if @order.sum < 1 or @order.sum > 100000000 or @order.sum == 'сюда' or @order.sum == nil or @order.sum == ''
			@order_valid = false
			flash[:sum] = 1
		end		
		if @order.account.size < 3 or @order.account.size > 3000 or @order.account == 'сюда' or @order.account == nil or @order.account == ''
			@order_valid = false
			flash[:account] = 2
		end
		if @order.when_payed.year.to_i == nil or @order.when_payed.year.to_i < 2014 or @order.when_payed.month.to_i == nil or @order.when_payed.day.to_i == nil or @order.when_payed.hour.to_i == nil or @order.when_payed.minute.to_i == nil or @order.when_payed == nil or @order.when_payed == ''
			@order_valid = false
			flash[:when_payed] = 3
		end		
	  if @order.type == false
			if @order.want_datetime.year.to_i == nil or @order.want_datetime.year.to_i < Time.now.year.to_i or @order.want_datetime.month.to_i == nil or @order.want_datetime.day.to_i == nil or @order.want_datetime.hour.to_i == nil or @order.want_datetime.minute.to_i == nil or @order.want_datetime == nil or @order.want_datetime == ''
				@order_valid = false
				flash[:want_datetime] = 4
			end	  
	  end		
		if @order.now_time.hour.to_i == nil or @order.now_time.minute.to_i == nil or @order.now_time == nil or @order.now_time == '' 
			@order_valid = false
			flash[:now_time] = 5
		end		

    if @order_valid
		  flash[:sum] = nil
		  flash[:account] = nil
		  flash[:when_payed] = nil
		  flash[:want_datetime] = nil
		  flash[:now_time] = nil
    	@news_email_valid = nil
		  @order_update_save = true
	    unless @order.save
		    unless @order.save
			    unless @order.save
			      @order_update_save = false
			    end
		    end
	    end
      if @order_update_save  
	    	if @order.type == false
	    	  if PsychologistMailer.psychologist_check_pers_pay(@order).deliver?
		  		  @order = nil  	  
            redirect_to products_path, notise: 'Я отвечу Вам по E-mail в течении 3-х суток. До встречи'
		  		else
		    	  if PsychologistMailer.psychologist_check_pers_pay(@order).deliver?
			  		  @order = nil  	  
  	          redirect_to products_path, notise: 'Я отвечу Вам по E-mail в течении 3-х суток. До встречи'
			  		else
			  		  redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
			  		end		  		  
		  		end
        end	  
	    	if @order.type == true
	    	  if PsychologistMailer.psychologist_check_product_pay(@order).deliver?
		  		  @order = nil  	  
            redirect_to products_path, notise: 'Я отвечу Вам по E-mail в течении 3-х суток. До встречи'
		  		else
		    	  if PsychologistMailer.psychologist_check_product_pay(@order).deliver?
			  		  @order = nil  	  
	            redirect_to products_path, notise: 'Я отвечу Вам по E-mail в течении 3-х суток. До встречи'
			  		else
			  		  redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
			  		end
		  		end
        end	        
        @order_update_save = nil
	  	else
	  	  @order_update_save = nil
	    	redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
      end	  	  
    else 
      @order_valid = nil
      redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
    end
  end

  def confirm
    @news_email = NewsEmail.find(:first, conditions: { id: @order.new_email_id} ) 
	unless @news_email.active or @order.active 
	  @news_email = nil
	  redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
	end    
    #set_post
		#if @order.akey == params[:akey]	  
		@order_confirm_mail = true
		unless ProductMailer.send_product_email(@order).deliver?
		  unless ProductMailer.send_product_email(@order).deliver?
		    unless ProductMailer.send_product_email(@order).deliver?
			  @order_confirm_mail = false
			end
          end			
		end	
		if @order_confirm_mail 
	  	@order.akey = nil
      @order.done = true
	  	@order.link = nil
      @order.title = nil
	    @order.news_email_name = nil
	 	  @order.news_email_email = nil
      unless @order.save
      	unless @order.save
      		unless @order.save	
		   	    @order.save
		   	  end
		  	end 	    
   	  end
      @news_email = NewsEmail.find(:first, conditions: { id: @order.new_email_id} )
     	@news_email.number_of_success_pays = @news_email.number_of_success_pays + 1
     	@news_email.payed_sum = @news_email.payed_sum + @order.sum
   	  unless @news_email.save
   	  	unless @news_email.save
   	  		unless @news_email.save
		   	    @news_email.save
		   	  end
		  	end 	    
   	  end
   	  @news_email = nil
      @order = nil
      @order_confirm_mail = nil
	  	redirect_to products_path, norice: 'Заказ успешно отправлен клиенту'
    else
	  	@order = nil
	  	@order_confirm_mail = nil
      redirect_to products_path, notice: 'Заказ не был отправлен клиенту. Попробуйте ещё раз'		  
		end	
    #else
	  #  @order = nil
    #  redirect_to posts_path, notice: 'Подозрительные данные об оплате. Возможно это злоумышленник'	
	  #end
  end

  def fail
    @news_email = NewsEmail.find(:first, conditions: { id: @order.new_email_id} ) 
	unless @news_email.active or @order.active 
	  @news_email = nil
	  redirect_to "http://psysite.herokuapp.com/orders/#{@order.akey}/#{@order.id}", notise: 'Попробуйте ещё раз' 
	end    
    #set_post
	  #if @order.akey == params[:akey]	
    @order.number_of_fails = @order.number_of_fails + 1
    @order.fail_datetime = @order.fail_datetime + Time.now.to_s + ', '
	    
    case @order.type
    when false
      @order.akey = akey
      if PersMailer.pers_pay_fail_email(@order).deliver?	        
        unless @order.save
          unless @order.save
          	@order.save
          end	
        end  	
        @order = nil
        redirect_to products_path, norice: 'Письмо отправлено клиенту'
      else
  	    if PersMailer.pers_pay_fail_email(@order).deliver?	        
  	      unless @order.save
  	        unless @order.save
  	        	@order.save
  	        end	
  	      end  	
  	      @order = nil
  	      redirect_to products_path, norice: 'Письмо отправлено клиенту'
  	    else
		    @order = nil
  	      redirect_to products_path, notice: 'Письмо не отправлено клиенту. Попробуйте ещё раз'		  
		    end
	    end	  
    when true
      @order.akey = akey
      if ProductMailer.product_pay_fail_email(@order).deliver?	        
        @order.save
        @order = nil
    	redirect_to producs_path, norice: 'Письмо отправлено клиенту'
      else
	      if ProductMailer.product_pay_fail_email(@order).deliver?	        
	        @order.save
	        @order = nil
	    	redirect_to producs_path, norice: 'Письмо отправлено клиенту'
	      else
	  	    @order = nil
	        redirect_to products_path, notice: 'Письмо не отправлено клиенту. Попробуйте ещё раз'	  
	      end
      end
	  #else
	  #  @order = nil
    #  redirect_to producs_path, notice: 'Письмо не отправлено клиенту. Попробуйте ещё раз'		  
	  #end	  	  
    #end	
	  
    #else
	  #  @order = nil
    #  redirect_to posts_path, notice: 'Подозрительные данные. Возможно это злоумышленник'	
  	#end	
  end



  #def order_params
  #  params.require(:order).permit(:type, :use_for_news, :name, :word, :akey)
  #end



  def order_create_params
    params.require(:order).permit(:account, :active, :akey, :done, :fail_datetime, :has_to_pay, :link, :new_email_id, :news_email_name, :news_email_email, :number_of_fails, :now_time, :product_id, :sum, :title, :typ, :want_datetime, :when_payed)
  end

  #def order_pers_create_params
   # params.require(:order).permit(:account, :akey, :done, :has_to_pay, :new_email_id, :news_email_name, :news_email_email, :now_time, :sum, :type, :want_datetime, :when_payed)
  #end

  #def order_product_create_params  
   # params.require(:order).permit(:account, :akey, :done, :has_to_pay, :link, :new_email_id, :news_email_name, :news_email_email, :now_time, :product_id, :sum, :title, :type, :when_payed)
  #end

  #private

  def set_post
    if Order.find(:first, conditions: { id: params[:id]} ) and Order.find(:first, conditions: { id: params[:id]} ).akey == params[:akey]
      @order = Order.find(params[:id])
    else
      @order = Order.New
      @order.title = params[:id]
      @order.akey = params[:akey]
      @order.want_datetime = Time.now.to_s
      unless AdminMailer.try_access_to_un_order(@order).deliver?
        unless AdminMailer.try_access_to_un_order(@order).deliver?
	        AdminMailer.try_access_to_un_order(@order).deliver	        	        
	      end  
      end
      @order = nil
      redirect_to products_path, notise: 'Заказ обрабатывается. Спасибо'
    end
  end

end
