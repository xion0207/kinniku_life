class MusclePartsController < ApplicationController
  def index
    @muscle_parts = MusclePart.all
  end

  def show
    @muscle_part = MusclePart.find(params[:id])
    @training_urls = (TrainingUrl.where(user_id: [current_user]).where(muscle_part: [@muscle_part])).page(params[:page])
    @training_url = TrainingUrl.new
    @training_record = TrainingRecord.new
    @training_records = TrainingRecord.where(user_id: [current_user]).where(muscle_part: [@muscle_part])
  end

  def create_record
   @training_record = TrainingRecord.new(training_record_params)
   if @training_record.save!
     redirect_to muscle_part_path(@training_record.muscle_part_id)
   else
     redirect_to muscle_part_path(@training_record.muscle_part_id)
   end
  end
  def create
   @training_url = TrainingUrl.new(training_url_params)
   url = params[:training_url][:url] # 取得したい情報を指定
   url = url.last(11)                # Youtubeはラスト11桁のIDでそれぞれの動画を読み込める
   @training_url.url = url           # 変数urlの値をインスタンス変数に格納
   if @training_url.save
     redirect_to muscle_part_path(@training_url.muscle_part_id)
   else
     redirect_to muscle_part_path(@training_url.muscle_part_id)
   end
  end

  def destroy
    training_url = TrainingUrl.find(params[:id])
    training_url.destroy  # データ（レコード）を削除
    redirect_to muscle_part_path(training_url.muscle_part_id)
  end
  def destroy_record
    training_record = TrainingRecord.find(params[:id])
    training_record.destroy
    redirect_to muscle_part_path(training_record.muscle_part_id)
  end

  private

   def training_url_params
    params.require(:training_url).permit(:url, :muscle_part_id, :user_id)
   end

   def training_record_params
    params.require(:training_record).permit(:training_event, :training_note, :muscle_part_id, :user_id)
   end

end