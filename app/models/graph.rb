class Graph < ApplicationRecord
    belongs_to :user
    belongs_to :training_record
end
