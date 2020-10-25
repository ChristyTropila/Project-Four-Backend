class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :userName, :password, :getCategories

    has_many :trick_treats
    has_many :buckets
end 