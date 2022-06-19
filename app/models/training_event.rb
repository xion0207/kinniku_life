class TrainingEvent < ApplicationRecord
  has_many :training_record, dependent: :destroy
  validates :name, presence: true
end
