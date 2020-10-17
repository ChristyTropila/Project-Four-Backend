class BucketSerializer < ActiveModel::Serializer
    attributes :id

    belongs_to: trick_treat
    belongs_to:  user
end 