require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.destroy_all

# 5.times do
#   restaurant = Restaurant.create({
#     name: Faker::Beer.name,
#     address: Faker::Address.city,
#     category: Faker::Lorem.sentence,
#   })

#   review = Review.create({
#     content: Faker::Lorem.sentence,
#     rating: (1..5).to_a.sample
#   })
#   review.restaurant = restaurant
#   review.save

#   binding.pry-byebug

# end


restaurant = Restaurant.create(name:"Panda express", category: "chinese", address: "somewhere in california")
review = Review.create(content: "not very authentic", rating: 3)
review_two = Review.create(content: "excellent place", rating: 4)
review.restaurant = restaurant
review.save
review_two.restaurant = restaurant
review_two.save

restaurant = Restaurant.create(name:"La pochatta", category: "italian", address: "auckland city")
review = Review.create(content: "nice and affordable", rating: 5)
review.restaurant = restaurant
review.save

restaurant = Restaurant.create(name:"Mentaz", category: "japanese", address: "12 lorne st")
review = Review.create(content: "delicious ramen", rating: 4)
review.restaurant = restaurant
review.save

restaurant = Restaurant.create(name:"French cafe", category: "french", address: "kybperpass road")
review = Review.create(content: "Fine dining", rating: 5)
review.restaurant = restaurant
review.save

restaurant = Restaurant.create(name:"Paradish", category: "chinese", address: "k road")
review = Review.create(content: "tasy spicy food", rating: 5)
review.restaurant = restaurant
review.save