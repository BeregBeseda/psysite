class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    $addresser = @user

    key_int = 10.times.map{rand(1..99)}
    key_str = 10.times.map{('a'..'z').to_a[rand(26)]}
    key_int.concat(key_str)
    key_int.shuffle!
    @user.akey = key_int.join

    if @user.save
      $addresser = nil
      UserMailer.user_welcome_email(@user).deliver
      redirect_to users_path(user_partial: 'layouts/users/success_created')
    else
      redirect_to post_path($post_id)
    end
  end


  def user_params
    params.require(:user).permit(:email, :name)
  end


  def update
    @user = User.find(:first, conditions: { akey: params[:akey]} )
    @user.akey = nil

    if @user.save
      redirect_to users_path(user_partial: 'layouts/users/instruction_pay_link')
    else
      redirect_to posts_path
    end
  end


end
