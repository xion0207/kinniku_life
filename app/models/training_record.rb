class TrainingRecord < ApplicationRecord
    belongs_to :user
    belongs_to :muscle_part
    has_many :graphs
end
