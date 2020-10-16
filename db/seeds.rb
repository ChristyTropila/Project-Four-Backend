# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
HauntedHouse.destroy_all
TrickTreat.destroy_all
Trivia.destroy_all
Bucket.destroy_all

User.reset_pk_sequence
HauntedHouse.reset_pk_sequence
TrickTreat.reset_pk_sequence    
Trivia.reset_pk_sequence
Bucket.reset_pk_sequence

# christy=User.create!(name:"christy", userName:"rockstar", password:"test123")

#haunted houses
house1=HauntedHouse.create!(lng:"-74.008292", lat:"40.710992")
house2=HauntedHouse.create!(lng:"-73.969497", lat:"40.792917")
house3=HauntedHouse.create!(lng:"-73.949927", lat:"40.739612")
house4=HauntedHouse.create!(lng:"-73.93963", lat:"40.817735")
house5=HauntedHouse.create!(lng:"-73.993527", lat:"40.752878")
house6=HauntedHouse.create!(lng:"-73.970181", lat:"40.686265")
house7=HauntedHouse.create!(lng:"-73.976704", lat:"40.735711")
house8=HauntedHouse.create!(lng:"-73.933703", lat:"40.792139")


#tricks/treats

treat=TrickTreat.create!(name: "Baconeggandcheese", category: 1, haunted_house_id: house1.id)
treat2=TrickTreat.create!(name: "Egg Cream", category: 1, haunted_house_id: house2.id)
treat3=TrickTreat.create!(name: "Chop Cheese", category: 1, haunted_house_id: house3.id)
treat4=TrickTreat.create!(name: "$1 Slice", category: 1, haunted_house_id: house4.id)
treat5=TrickTreat.create!(name: "Schmeared bagle with lox", category: 1, haunted_house_id: house5.id )
treat6=TrickTreat.create!(name: "Halal chicken and rice white sauce red sauce", category: 1, haunted_house_id: house6.id)
treat7=TrickTreat.create!(name: "Junior's Cheesecake", category: 1, haunted_house_id:house7.id )
treat8=TrickTreat.create!(name: "Dirty water dog", category: 1, haunted_house_id:house8.id )
treat9=TrickTreat.create!(name: "Unlimited monthly metrocard", category: 1, haunted_house_id: house1.id)
treat10=TrickTreat.create!(name: "Timbs", category: 1, haunted_house_id: house2.id )
treat11=TrickTreat.create!(name: "Uptowns", category: 1, haunted_house_id: house3.id)
treat12=TrickTreat.create!(name: "1620 Key", category: 1, haunted_house_id:house4.id )
treat13=TrickTreat.create!(name: "Coffee Regular", category: 1, haunted_house_id: house5.id)
treat14=TrickTreat.create!(name: "Nutcracker", category: 1, haunted_house_id: house6.id )
treat15=TrickTreat.create!(name: "Katz pastrami on rye with mustard. Juicy~", category: 1, haunted_house_id: house7.id )
treat16=TrickTreat.create!(name: "Dim Sum giftcard", category: 1, haunted_house_id: house8.id)

trick=TrickTreat.create!(name: "Raised rent" , category: 2, haunted_house_id: house1.id)
trick2=TrickTreat.create!(name: "Delayed train" , category: 2, haunted_house_id: house2.id)
trick3=TrickTreat.create!(name: "Sewer rat" , category: 2, haunted_house_id: house3.id )
trick4=TrickTreat.create!(name: "Parking ticket"  , category: 2, haunted_house_id: house4.id)
trick5=TrickTreat.create!(name: "Pigeon droppings" , category: 2, haunted_house_id: house5.id)
trick6=TrickTreat.create!(name: "Tourist"  , category: 2, haunted_house_id: house6.id)
trick7=TrickTreat.create!(name: "Surged Uber fare"  , category: 2, haunted_house_id: house7.id)
trick8=TrickTreat.create!(name: "Metro machine eats your money", category: 2, haunted_house_id: house8.id)
trick9=TrickTreat.create!(name: "Bumper to bumper traffic" , category: 2, haunted_house_id: house1.id)
trick10=TrickTreat.create!(name: "Towed vehicle" , category: 2, haunted_house_id: house2.id)
trick11=TrickTreat.create!(name: "Cash only metro station" , category: 2, haunted_house_id: house3.id)
trick12=TrickTreat.create!(name: "Every taxi occupied"  , category: 2, haunted_house_id: house4.id)
trick13=TrickTreat.create!(name: "Covid shutdown" , category: 2, haunted_house_id: house5.id)
trick14=TrickTreat.create!(name: "Curfew" , category: 2, haunted_house_id: house6.id)
trick15=TrickTreat.create!(name: "Red Sox beat Yankees" , category: 2, haunted_house_id: house7.id )
trick16=TrickTreat.create!(name: "Cockroaches" , category: 2, haunted_house_id: house8.id)



#trivia questions
trivia=Trivia.create!(question: "What is todays date", haunted_house_id: house1.id)


# Bucket.create!(user_id:christy.id, trick_treat_id: treat.id)
# Bucket.create!(user_id:christy.id, trick_treat_id: trick.id)
# Bucket.create!(user_id:christy.id, trick_treat_id: treat2.id)


