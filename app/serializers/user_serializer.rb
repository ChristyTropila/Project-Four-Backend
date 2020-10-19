class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :userName, :password

    has_many :trick_treats
end 