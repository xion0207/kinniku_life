class BodyComposition < ApplicationRecord
    belongs_to :user

  def body_fat_weight
    (body_weight * body_fat_percentage / 100).round(1)
  end
  def lean_body_weight
    (body_weight - body_fat_weight).round(1)
  end
  def self.chart_date
    order(result_date: :asc).pluck('date', 'body_weight').to_h
  end
end
