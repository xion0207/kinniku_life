class HomesController < ApplicationController
  def top
    @user = current_user
    @edit = current_user
    @body_composition = BodyComposition.new
    @body_compositions = BodyComposition.all
  end

  def create
    body_composition = BodyComposition.new(body_composition_params)
    body_composition.save!
    redirect_to root_path
  end

  def edit
    @user = current_user
  end

  def update
    @body_composition =
    @user.update(user_params)
    redirect_to root_path
  end

 private
  def user_params
    params.require(:user).permit(:name, :stature, :email)
  end
  def body_composition_params
    params.require(:body_composition).permit(:user_id, :body_weight, :body_fat_percentage, :date)
  end
  def graph_params
    params.require(:graph).permit(:user_id, :body_composition_id, :date)
  end
end