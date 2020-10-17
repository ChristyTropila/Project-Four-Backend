class TriviaSerializer < ActiveModel::Serializer
    attributes :id, :question, :answer, :option1, :option2, :option3
    belongs_to :haunted_house
end 