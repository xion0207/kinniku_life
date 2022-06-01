class BodyComposition < ApplicationRecord
    belongs_to :user

  def body_fat_weight
    (body_weight * body_fat_percentage / 100).round(1)
  end
  def lean_body_weight
    (body_weight - body_fat_weight)
  end
  def self.chart_date
    order(result_date: :asc).pluck('date', 'body_weight').to_h
  end
  def ffmi_status
    (lean_body_weight / (User.find(user_id).stature ** 2)* 10000).round(1)
  end
end
