class BodyComposition < ApplicationRecord
    belongs_to :user

    SHOSU = /\A[-]?[0-9]+(\.[0-9]+)?\z/
    validates :body_weight, presence: true, format: { with: SHOSU }
    validates :body_fat_percentage, format: { with: SHOSU }

  def body_fat_weight
    (body_weight * body_fat_percentage / 100).round(1)
  end
  def lean_body_weight
    (body_weight - body_fat_weight).round(1)
  end
  def self.chart_date
    order(result_date: :asc).pluck('date').to_h
  end
  def ffmi_status
    (lean_body_weight / (User.find(user_id).stature ** 2)* 10000).round(1)
  end
end
