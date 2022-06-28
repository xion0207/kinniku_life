class MusclePart < ApplicationRecord
    has_many :training_urls
    has_many :training_records
end
