class BucketSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :trick_treat_id, :getName

 belongs_to :trick_treat
    # belongs_to:  user
end 