class User < ApplicationRecord
    has_many :buckets
    has_many :trick_treats, through: :buckets

    validates :name, presence: {message: 'Please Provide Your Name'}
    validates_uniqueness_of :userName
    has_secure_password

def getCategories
 
 catArray=[]
    self.trick_treats.select do|cat|
  
     catArray.push(cat.category)
    end
    return catArray
end
  
    
end
