class Graph < ApplicationRecord
    belongs_to :user
    belongs_to :training_record
    belongs_to :body_compositions
end
