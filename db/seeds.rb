# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
Review.destroy_all

restaurants_specs = [
  {
    name: "B&M",
    address: "Parmentier",
    phone_number: "0123456789",
    category: "french"
  },
  {
    name: "Tchaï",
    address: "Oberkampf",
    phone_number: "0123456789",
    category: "french"
  },
  {
    name: "Mamma Roma",
    address: "Oberkampf",
    phone_number: "0123456789",
    category: "italian"
  }
]

reviews_specs = [
  {
    content: "The staff is awesome, the burgers are great!",
    rating: 5,
    restaurant_id: 1
  },
  {
    content: "The staff is awesome, the food is soooo good! I could eat their delicious meals everyday.",
    rating: 5,
    restaurant_id: 2
  },
  {
    content: "The staff is awesome, their pizzas are delicious!",
    rating: 5,
    restaurant_id: 3
  }
]

restaurants_specs.each { |specs| Restaurant.create!(specs) }
reviews_specs.each { |specs| Review.create!(specs) }
