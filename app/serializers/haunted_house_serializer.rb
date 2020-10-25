class HauntedHouseSerializer < ActiveModel::Serializer
    attributes :id, :lat, :lng, :trick_treats

    # has_many :trivia
    has_many :trick_treats
end 