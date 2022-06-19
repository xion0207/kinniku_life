class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
    redirect_to root_path
    else
      redirect_to root_path
    end
  end

 private
  def user_params
    params.require(:user).permit(:name, :stature, :email)
  end
end
