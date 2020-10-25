class TrickTreat < ApplicationRecord
    belongs_to :haunted_house
    has_many :buckets
    has_many :users, through: :buckets
end
