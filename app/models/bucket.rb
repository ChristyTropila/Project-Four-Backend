class Bucket < ApplicationRecord
    belongs_to :user
    belongs_to :trick_treat



    def getName
        self.trick_treat.name
    end
end
