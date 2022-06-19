class TrainingUrl < ApplicationRecord
    belongs_to :user
    belongs_to :muscle_part
    validates :url, presence: true
end
