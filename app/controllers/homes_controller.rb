class HomesController < ApplicationController
  before_action :authenticate_user!

  def top
    @user = current_user
    @edit = current_user
    @body_composition = BodyComposition.new
    @body_compositions = BodyComposition.where(user_id: [current_user]).order(date: "ASC").limit(90)
    @body_composition_now = BodyComposition.where(user_id: [current_user]).order(date: :desc).limit(1)
    @body_compositions_desc = BodyComposition.where(user_id: [current_user]).order(date: "DESC")
    @training_records = TrainingRecord.where(user_id: [current_user]).order(created_at: "DESC")
  end

  def create
    body_composition = BodyComposition.new(body_composition_params)
    if body_composition.save
      redirect_to root_path
    else
	    redirect_to root_path
    end
  end

  def edit
    body_composition = BodyComposition.find(params[:id])
    body_composition.update(body_composition_params)
    redirect_to root_path
  end

  def update
    body_composition = BodyComposition.find(params[:id])
    body_composition.update(body_composition_params)
    redirect_to root_path
  end


  def destroy
    body_composition = BodyComposition.find(params[:id])
    body_composition.destroy  # データ（レコード）を削除
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