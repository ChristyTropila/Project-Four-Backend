class BucketSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :trick_treat_id

 belongs_to :trick_treat
    # belongs_to:  user
end 