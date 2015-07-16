# encoding: utf-8
class UsersController < ApplicationController
  
  
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:msg] = 'Saved'
    else   
      flash[:msg] = 'NOT saved'
    end  
    redirect_to post_path(1)    
  end
  
  
  
  def update 
    @user = cur_user
    @user.update_attributes(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:msg] = 'Saved'
    else   
      flash[:msg] = 'NOT saved'
    end  
    redirect_to post_path(1)        
  end
  
  
  
  def user_params
    params.require(:user).permit(:email, :password, :subscribe)
  end  
  
end
