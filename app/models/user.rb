class User < ApplicationRecord
    has_many :buckets
    has_many :trick_treats, through: :buckets

    validates :name, presence: {message: 'Please Provide Your Name'}
    validates :userName, presence: true, uniqueness: {
        message: ->(object, data)do
        "Hey #{object.name}!, #{data[:value]} is taken already! Try Again!"
    end
}

def getCategories
 
 catArray=[]
    self.trick_treats.select do|cat|
  
     catArray.push(cat.category)
    end
    return catArray
end
  
    
end
