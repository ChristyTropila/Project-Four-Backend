class User < ApplicationRecord
    has_many :buckets
    has_many :trick_treats, through: :buckets
end
