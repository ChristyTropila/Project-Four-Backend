class HauntedHouseSerializer < ActiveModel::Serializer
    attributes :id, :lat, :lng

    has_many :trivia
    has_many :trick_treats
end 