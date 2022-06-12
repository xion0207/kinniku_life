class TrainingRecord < ApplicationRecord
    belongs_to :user
    belongs_to :muscle_part
    belongs_to :training_event
    has_many :graphs
end
