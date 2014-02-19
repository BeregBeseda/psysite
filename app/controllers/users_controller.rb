class UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    $addresser = @user

    if @user.save
      $addresser = nil
      redirect_to users_path(user_partial: 'layouts/users/success_created')
    else
      redirect_to post_path($post_id)
    end
  end


  def user_params
    params.require(:user).permit(:email)
  end

end
