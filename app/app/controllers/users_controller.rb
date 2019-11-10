class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def profile
    @user = current_user
    render "user/profile"
  end

  def update_profile
      @user = User.find(current_user.id)
      if @user.update(user_profile_params)
        flash[:notices] = ["Your profile was successfully updated"]
        redirect_to profile_path
      else
        flash[:notices] = ["Your profile could not be updated"]
        render profile_path
      end
  end

  def change_password
  end

  def update_password
  end

  private
  def user_profile_params
    params.require(:user).permit(:username, :email)
  end
end