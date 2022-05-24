class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update
    redirect_to root_path
  end

 private
  def user_params
    params.require(:user).permit(:name, :stature, :email)
  end
end
