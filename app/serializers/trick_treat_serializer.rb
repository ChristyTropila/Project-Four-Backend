class TrickTreatSerializer < ActiveModel::Serializer
    attributes :id, :name, :category
     belongs_to :haunted_house
     
end 