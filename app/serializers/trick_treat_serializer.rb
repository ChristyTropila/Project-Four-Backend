class TrickTreatSerializer < ActiveModel::Serializer
    attributes :id, :name, :category
    has_many :buckets
   
end 