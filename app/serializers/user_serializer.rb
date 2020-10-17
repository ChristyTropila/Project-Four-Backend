class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :userName

    has_many :trick_treats
end 